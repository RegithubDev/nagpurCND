package com.resustainability.reisp.controller;

import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.auth.AuthScope;
import org.apache.http.auth.UsernamePasswordCredentials;
import org.apache.http.client.CredentialsProvider;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.BasicCredentialsProvider;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;
import org.apache.log4j.Logger;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.resustainability.reisp.common.DateParser;
import com.resustainability.reisp.common.EMailSender;
import com.resustainability.reisp.model.DashBoardWeighBridge;
import com.resustainability.reisp.model.IWM;
import com.resustainability.reisp.service.DashBoardWeighBridgeService;


@Controller
public class Schedular {
	@InitBinder
    public void initBinder(WebDataBinder binder) {
        binder.registerCustomEditor(String.class, new StringTrimmerEditor(true));
    } 
	public static Logger logger = Logger.getLogger(Schedular.class);
	
	@Autowired
	LoginController loginController;
	
	@Autowired
	
	@Value("${common.error.message}")
	public String commonError;
	
	@Value("${run.cron.jobs}")
	public boolean is_cron_jobs_enabled;
	
	@Value("${run.cron.jobs.in.qa}")
	public boolean is_cron_jobs_enabled_in_qa;
	
	@Autowired
	DashBoardWeighBridgeService service;

	/**********************************************************************************/
	@Scheduled(cron = "${cron.expression.sending.alert.mails.by.alert.type}")
	public void UserActivityCheck(){	
		if(is_cron_jobs_enabled || is_cron_jobs_enabled_in_qa) {
		     logger.error("userLoginTimeout : Method executed every day. Current time is :"+ new Date());	    
		     try {
		    	 System.out.println("cronJob ActivityCheck!!!!"); 
		    	 boolean flag = true;
		    	 EMailSender email = new EMailSender();
		    	 email.send("saidileep.p@resustainability.com", "Test- Subject", "body", null, "Test- Subject2");
		    	 
		    		 if(is_cron_jobs_enabled || is_cron_jobs_enabled_in_qa) {
		    			 System.out.println("cronJob ActivityCheck!!!!"); 
					    	 //service.getIRMListAlert();
							logger.error("getIRMListAlert >> Sent mails : "+ flag); 
				    	}
			 } catch (Exception e) {
				 e.printStackTrace();
				logger.error("monthlyAlerts() : "+e.getMessage());
			 }
		}
	}
}
