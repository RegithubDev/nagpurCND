package com.resustainability.reisp.dao;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.TransactionDefinition;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.support.DefaultTransactionDefinition;
import org.springframework.util.StringUtils;

import com.resustainability.reisp.common.EncryptDecrypt;
import com.resustainability.reisp.model.State;

@Repository
public class IrisStateDao {

	@Autowired
	JdbcTemplate jdbcTemplate;
	
	@Autowired
	DataSource dataSource;

	@Autowired
	DataSourceTransactionManager transactionManager;

	public int getTotalRecords(State obj, String searchParameter) throws Exception {
		int totalRecords = 0;
		try {
			int arrSize = 0;
			String qry = "select count(DISTINCT um.state_name) as total_records FROM [state] um "
			+ " where um.state_name <> '' ";
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getId())) {
				qry = qry + " and  um.id = ? ";
				arrSize++;
			}
		
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
				qry = qry + " and um.status = ? ";
				arrSize++;
			}
			if(!StringUtils.isEmpty(searchParameter)) {
				qry = qry + " and (um.state_name like ? or um.status like ?)";
				arrSize++;
				arrSize++;
			}	
			
			Object[] pValues = new Object[arrSize];
			int i = 0;
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getId())) {
				pValues[i++] = obj.getId();
			}
			
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
				pValues[i++] = obj.getStatus();
			}
			if(!StringUtils.isEmpty(searchParameter)) {
				pValues[i++] = "%"+searchParameter+"%";
				pValues[i++] = "%"+searchParameter+"%";
			}
			
			totalRecords = jdbcTemplate.queryForObject( qry,pValues,Integer.class);
		}catch(Exception e){ 
			e.printStackTrace();
			throw new Exception(e);
		}
		return totalRecords;
	}

	public List<State> getStateList(State obj, int startIndex, int offset, String searchParameter) throws Exception {
		List<State> objsList = null;
		try {
			int arrSize = 0;
			jdbcTemplate = new JdbcTemplate(dataSource);
			String qry = "SELECT s.[id]"
					+ "      ,s.[state_name]"
					+ "      ,s.[status]"
					+ "      ,um.user_name as [created_by]"
					+ "      ,FORMAT (s.created_date, 'dd-MMM-yy') as [created_date]"
					+ "      ,um1.user_name as [modified_by]"
					+ "      ,FORMAT (s.modified_date, 'dd-MMM-yy') as [modified_date] FROM [state] s  "
					+ " left join user_management um on s.created_by = um.id   "
					+ " left join user_management um1 on s.modified_by = um1.id  "
					+ "where s.id is not null  ";
			
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getId())) {
				qry = qry + " and  s.id = ? ";
				arrSize++;
			}
		
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
				qry = qry + " and s.status = ? ";
				arrSize++;
			}
			if(!StringUtils.isEmpty(searchParameter)) {
				qry = qry + " and (s.id like ? or s.status like ?)";
				arrSize++;
				arrSize++;
			}	
			if(!StringUtils.isEmpty(startIndex) && !StringUtils.isEmpty(offset)) {
				qry = qry + " ORDER BY um.user_name asc offset ? rows  fetch next ? rows only";	
				arrSize++;
				arrSize++;
			}
			Object[] pValues = new Object[arrSize];
			int i = 0;
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getId())) {
				pValues[i++] = obj.getId();
			}
		
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
				pValues[i++] = obj.getStatus();
			}
			if(!StringUtils.isEmpty(searchParameter)) {
				pValues[i++] = "%"+searchParameter+"%";
				pValues[i++] = "%"+searchParameter+"%";
			}
			if(!StringUtils.isEmpty(startIndex) && !StringUtils.isEmpty(offset)) {
				pValues[i++] = startIndex;
				pValues[i++] = offset;
			}
			objsList = jdbcTemplate.query( qry,pValues, new BeanPropertyRowMapper<State>(State.class));	
		} catch (Exception e) {
			e.printStackTrace();
			throw new Exception(e);
		}
		return objsList;
	}

	public boolean addStateIris(State obj) throws Exception {
		int count = 0;
		boolean flag = false;
		TransactionDefinition def = new DefaultTransactionDefinition();
		TransactionStatus status = transactionManager.getTransaction(def);
		try {
			NamedParameterJdbcTemplate namedParamJdbcTemplate = new NamedParameterJdbcTemplate(dataSource);
			String insertQry = "INSERT INTO [state] "
					+ "		( state_name"
					+ "      ,status"
					+ "      ,created_by,created_date) "
					+ "		VALUES "
					+ "		( :state_name"
					+ "      ,:status"
					+ "      ,:created_by,getdate())";
			BeanPropertySqlParameterSource paramSource = new BeanPropertySqlParameterSource(obj);		 
		    count = namedParamJdbcTemplate.update(insertQry, paramSource);
			if(count > 0) {
				flag = true;
			}
			transactionManager.commit(status);
		}catch (Exception e) {
			transactionManager.rollback(status);
			e.printStackTrace();
			throw new Exception(e);
		}
		return flag;
	}

	public State getStateDetails(State user) throws Exception {
		State obj = null;
		try {
			String qry = "SELECT s.[id]"
					+ "        , ,[id]"
					+ "      ,[state_name]"
					+ "      ,[status]"
					+ "      ,um.user_name as [created_by]"
					+ "      ,FORMAT (um.created_date, 'dd-MMM-yy') as[created_date]"
					+ "      ,um1.user_name as [modified_by]"
					+ "      ,FORMAT (um.modified_date, 'dd-MMM-yy') as[modified_date] FROM [state] s  "
					+ " left join user_management um on s.created_by = um.id   "
					+ " left join user_management um1 on s.modified_by = um1.id  "
					+ "where um.id is not null  ";
			int arrSize = 0;
			if(!StringUtils.isEmpty(user) && !StringUtils.isEmpty(user.getId())) {
				qry = qry + " and s.id = ? ";
				arrSize++;
			}
			Object[] pValues = new Object[arrSize];
			int i = 0;
			if(!StringUtils.isEmpty(user) && !StringUtils.isEmpty(user.getId())) {
				pValues[i++] = user.getId();
			}
			obj = (State)jdbcTemplate.queryForObject(qry, pValues, new BeanPropertyRowMapper<State>(State.class));

		} catch (Exception e) {
			e.printStackTrace();
			throw new Exception(e);
		}
		return obj;
	}

	public boolean updateStateIris(State obj) throws Exception {
		int count = 0;
		boolean flag = false;
		TransactionDefinition def = new DefaultTransactionDefinition();
		TransactionStatus status = transactionManager.getTransaction(def);
		try {
			NamedParameterJdbcTemplate namedParamJdbcTemplate = new NamedParameterJdbcTemplate(dataSource);
			String insertQry = "UPDATE [state] set "
					+ "      state_name= :state_name"
					+ "      ,status= :status,modified_date= getdate(),modified_by= :modified_by"
					+ " where id =  '"+obj.getId()+"'";
			BeanPropertySqlParameterSource paramSource = new BeanPropertySqlParameterSource(obj);		 
		    count = namedParamJdbcTemplate.update(insertQry, paramSource);
			if(count > 0) {
				flag = true;
			}
			transactionManager.commit(status);
		}catch (Exception e) {
			transactionManager.rollback(status);
			e.printStackTrace();
			throw new Exception(e);
		}
		return flag;
	}

	public List<State> getStateFilterListForState(State obj) throws Exception {
		List<State> objsList = null;
		try {
			int arrSize = 0;
			jdbcTemplate = new JdbcTemplate(dataSource);
			String qry = "SELECT um.[id],state_name  from [state] um  where um.id is not null ";
			
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getId())) {
				qry = qry + " and  um.id = ? ";
				arrSize++;
			}
		
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
				qry = qry + " and um.status = ? ";
				arrSize++;
			}
			qry = qry + " order by um.id asc";
			Object[] pValues = new Object[arrSize];
			int i = 0;
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getId())) {
				pValues[i++] = obj.getId();
			}
		
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
				pValues[i++] = obj.getStatus();
			}
			objsList = jdbcTemplate.query( qry,pValues, new BeanPropertyRowMapper<State>(State.class));	
		} catch (Exception e) {
			e.printStackTrace();
			throw new Exception(e);
		}
		return objsList;
	}

	public List<State> getStatusFilterListForState(State obj) throws Exception {
		List<State> objsList = null;
		try {
			int arrSize = 0;
			jdbcTemplate = new JdbcTemplate(dataSource);
			String qry = "SELECT distinct([status]) from [state] um where status is not null ";
			
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getId())) {
				qry = qry + " and  um.id = ? ";
				arrSize++;
			}
		
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
				qry = qry + " and um.status = ? ";
				arrSize++;
			}
			qry = qry + " order by um.status asc";
			Object[] pValues = new Object[arrSize];
			int i = 0;
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getId())) {
				pValues[i++] = obj.getId();
			}
			
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
				pValues[i++] = obj.getStatus();
			}
			objsList = jdbcTemplate.query( qry,pValues, new BeanPropertyRowMapper<State>(State.class));	
		} catch (Exception e) {
			e.printStackTrace();
			throw new Exception(e);
		}
		return objsList;
	}

	
	
	
}
