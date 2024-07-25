package com.resustainability.reisp.controller;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.codec.binary.Base64;
import org.apache.log4j.Logger;
import org.apache.poi.ss.usermodel.BorderStyle;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.FillPatternType;
import org.apache.poi.ss.usermodel.Font;
import org.apache.poi.ss.usermodel.HorizontalAlignment;
import org.apache.poi.ss.usermodel.VerticalAlignment;
import org.apache.poi.ss.util.WorkbookUtil;
import org.apache.poi.xssf.usermodel.XSSFCellStyle;
import org.apache.poi.xssf.usermodel.XSSFColor;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.http.MediaType;
import org.springframework.validation.Errors;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.util.StringUtils;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.resustainability.reisp.constants.PageConstants;
import com.resustainability.reisp.model.AttModelNormal;
import com.resustainability.reisp.model.AttOutputModel;
import com.resustainability.reisp.model.BrainBox;
import com.resustainability.reisp.model.DashBoardWeighBridge;
import com.resustainability.reisp.model.IRM;
import com.resustainability.reisp.service.BMWService;
@RestController
@RequestMapping("/reone")
public class NagpurAPIController {

	@InitBinder
    public void initBinder(WebDataBinder binder) {
        binder.registerCustomEditor(String.class, new StringTrimmerEditor(true));
    } 
	Logger logger = Logger.getLogger(NagpurAPIController.class);
	   
	@Autowired
	BMWService service;
	
	
	@Value("${common.error.message}")
	public String commonError;
	
	@Value("${record.dataexport.success}")
	public String dataExportSucess;
	
	@Value("${record.dataexport.invalid.directory}")
	public String dataExportInvalid;
	
	@Value("${record.dataexport.error}")
	public String dataExportError;
	
	@Value("${record.dataexport.nodata}")
	public String dataExportNoData;
	
	@Value("${template.upload.common.error}")
	public String uploadCommonError;
	
	@Value("${template.upload.formatError}")
	public String uploadformatError;
	
	
	@RequestMapping(value = "/getNagpurList", method = {RequestMethod.GET,RequestMethod.POST},produces=MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public String getNagpurList(@RequestHeader("Authorization") String authentication, @RequestBody DashBoardWeighBridge obj1,BrainBox obj,HttpSession session,HttpServletResponse response , Errors filterErrors) throws JsonProcessingException {
		List<BrainBox> companiesList = null;
		 String json = null;
		 boolean flag = false;
		 boolean call_service = true;
		 boolean log = true;
		 int logInfo = 0;
		 HashMap<String, String> data = new HashMap<String, String>();
		 ObjectMapper objectMapper = new ObjectMapper();
		try {
			if(!StringUtils.isEmpty(obj1.getFrom_date())) {
				obj1.setFrom_date(obj1.getFrom_date());
			}
			 String user_id1 = "rechwbhingpr";
			 String password1 = "Y1298extvbddyzB";
			 String pair=new String(Base64.decodeBase64(authentication.substring(6)));
		     String userName=pair.split(":")[0];
		     String password=pair.split(":")[1];
		     obj1.setUser_id(userName);
		     obj1.setPassword(password);
		
			 if(flag) {
				 if(!user_id1.contentEquals(obj1.getUser_id()) || !password1.contentEquals(obj1.getPassword())) {
					 call_service = false;
					 data = new HashMap<String, String>();
					 data.put("200","User Name or Password Incorrect!");
					 json = objectMapper.writeValueAsString(data);
					 obj1.setMSG("User Name or Password Incorrect!");
				 }
				 else if(StringUtils.isEmpty(obj1.getFrom_date())) {
					 call_service = false;
					 data = new HashMap<String, String>();
					 data.put("200","Date not mentioned! Please mention this format : from_date : { m/d/yyyy }");
					 json = objectMapper.writeValueAsString(data);
					 obj1.setMSG("Date not mentioned!");
				 }
				 if(call_service) {
					 companiesList = service.getNagpurCNDList(obj1,obj,response);
					 logInfo = service.getLogInfo(obj1,obj,companiesList);
					 if(companiesList.size() > 0 && logInfo == 0 ){
						 json = objectMapper.writeValueAsString(companiesList);
						 obj1.setMSG(companiesList.size()+" Data synched");
						 obj1.setPTC_status("Y");
						 log = true;
					 }else if(companiesList.size() > 0 &&  logInfo == 0 && !StringUtils.isEmpty(obj1.getRepulled()) && "Yes".equalsIgnoreCase(obj1.getRepulled()) ){
						 json = objectMapper.writeValueAsString(companiesList);
						 obj1.setMSG(companiesList.size()+" Data synched");
						 obj1.setPTC_status("Y");
						 log = true;
					 }else if(companiesList.size() > 0 &&  logInfo > 0 && !StringUtils.isEmpty(obj1.getRepulled()) && "Yes".equalsIgnoreCase(obj1.getRepulled()) ){
						 json = objectMapper.writeValueAsString(companiesList);
						 obj1.setMSG(companiesList.size()+" Data synched");
						 obj1.setPTC_status("Y");
						 log = true;
					 }else if(companiesList.size() > 0 &&  logInfo > 0 && !StringUtils.isEmpty(obj1.getRepulled()) && "No".equalsIgnoreCase(obj1.getRepulled()) ){
						 data = new HashMap<String, String>();
						 data.put("200","Data Already pulled before! If you want to pull again Change header (repulled : Yes)");
						 json = objectMapper.writeValueAsString(data);
						 log = false;
					 }else if(companiesList.size() > 0 &&  logInfo > 0 && StringUtils.isEmpty(obj1.getRepulled()) ){
						 data = new HashMap<String, String>();
						 data.put("200","Data Already pulled before! If you want to pull again, Add header (repulled : Yes)");
						 json = objectMapper.writeValueAsString(data);
						 log = false;
					
					 }else {
						 companiesList = new ArrayList<BrainBox>(1);
						 data = new HashMap<String, String>();
						 data.put("200", "No New Records are Available For the Selected Date! Data Already pulled before! If you want to pull again, Add header (repulled : Yes)");
							 json = objectMapper.writeValueAsString(data);
							 obj1.setMSG("No New Records are Available For the Selected Date! Data Already pulled before! If you want to pull again, Add header (repulled : Yes)");
					  }
				 }else {
					 companiesList = new ArrayList<BrainBox>(1);
				 }
				
			 }else {
				 data = new HashMap<String, String>();
			     json = objectMapper.writeValueAsString(data);
			     obj1.setMSG("No Access for this IP Address");
			     companiesList = new ArrayList<BrainBox>(1);
			 }
			 if(log) {service.getLogsOfResults(companiesList,obj1);}
		}catch (Exception e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
			if("Index 0 out of bounds for length 0".contentEquals(e.getMessage())) {
				data = new HashMap<String, String>();
				 data.put("200","Please enter User Name and Password!");
				json = objectMapper.writeValueAsString(data);
			}else {
				data = new HashMap<String, String>();
				data.put("200","Internal Error! Please contact Support");
				json = objectMapper.writeValueAsString(data);
			}
			logger.error("getNagpurList : " + e.getMessage());
		}
		return json;
	}
	
	
	@RequestMapping(value = "/getAllAttendanceList", method = {RequestMethod.GET,RequestMethod.POST},produces=MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public String getAllAttendanceList(@RequestHeader("Authorization") String authentication, @RequestBody AttModelNormal obj1,AttOutputModel obj,HttpSession session,HttpServletResponse response , Errors filterErrors) throws JsonProcessingException {
		List<AttOutputModel> companiesList = null;
		 String json = null;
		 boolean flag = false;
		 boolean call_service = true;
		 boolean log = true;
		 int logInfo = 0;
		 HashMap<String, String> data = new HashMap<String, String>();
		 ObjectMapper objectMapper = new ObjectMapper();
		try {
			if(!StringUtils.isEmpty(obj1.getFrom_date())) {
				obj1.setFrom_date(obj1.getFrom_date());
			}
			 String user_id1 = "rechwbhingpr";
			 String password1 = "Y1298extvbddyzB";
			 String pair=new String(Base64.decodeBase64(authentication.substring(6)));
		     String userName=pair.split(":")[0];
		     String password=pair.split(":")[1];
		     obj1.setUser_id(userName);
		     obj1.setPassword(password);
				 if(!user_id1.contentEquals(obj1.getUser_id()) || !password1.contentEquals(obj1.getPassword())) {
					 call_service = false;
					 data = new HashMap<String, String>();
					 data.put("200","User Name or Password Incorrect!");
					 json = objectMapper.writeValueAsString(data);
				 }
				 if(StringUtils.isEmpty(obj1.getArea_code())) {
					 call_service = false;
					 data = new HashMap<String, String>();
					 data.put("200","Area Code not mentioned! Please mention Area Code Its Manditory");
					 json = objectMapper.writeValueAsString(data);
				 }
				 if(call_service) {
					 companiesList = service.getAllAttendanceList(obj1,obj,response);
					// logInfo = service.getLogInfo(obj1,obj,companiesList);
					 if(companiesList.size() > 0 && logInfo == 0 ){
						 json = objectMapper.writeValueAsString(companiesList);
					 }else {
						 companiesList = new ArrayList<AttOutputModel>(1);
						 data = new HashMap<String, String>();
						 data.put("200", "No New Records are Available For the Selected Date! Data Already pulled before! If you want to pull again, Add header (repulled : Yes)");
							 json = objectMapper.writeValueAsString(data);
					  }
				 }else {
					 companiesList = new ArrayList<AttOutputModel>(1);
				 }
			 
			// if(log) {service.getLogsOfResults(companiesList,obj1);}
		}catch (Exception e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
			if("Index 0 out of bounds for length 0".contentEquals(e.getMessage())) {
				data = new HashMap<String, String>();
				 data.put("200","Please enter User Name and Password!");
				json = objectMapper.writeValueAsString(data);
			}else {
				data = new HashMap<String, String>();
				data.put("200","Internal Error! Please contact Support");
				json = objectMapper.writeValueAsString(data);
			}
			logger.error("getAllAttendanceList : " + e.getMessage());
		}
		return json;
	}
	

	@RequestMapping(value = "/export-cnd", method = {RequestMethod.GET,RequestMethod.POST})
	public void exportIRM(HttpServletRequest request, HttpServletResponse response,HttpSession session,@ModelAttribute DashBoardWeighBridge obj,RedirectAttributes attributes){
		ModelAndView view = new ModelAndView(PageConstants.dashboardAdmin);
		List<DashBoardWeighBridge> dataList = new ArrayList<DashBoardWeighBridge>();
		String userId = null;String userName = null;
		try {
			userId = (String) session.getAttribute("USER_ID");userName = (String) session.getAttribute("USER_NAME");
			view.setViewName("redirect:/home");
	
			dataList = service.exportIRM(obj); 
			if(dataList != null && dataList.size() > 0){
	            XSSFWorkbook  workBook = new XSSFWorkbook ();
	            XSSFSheet sheet = workBook.createSheet(WorkbookUtil.createSafeSheetName("Nagpur_CnD"));
		        workBook.setSheetOrder(sheet.getSheetName(), 0);
		        
		        byte[] blueRGB = new byte[]{(byte)0, (byte)176, (byte)240};
		        byte[] yellowRGB = new byte[]{(byte)255, (byte)192, (byte)0};
		        byte[] greenRGB = new byte[]{(byte)146, (byte)208, (byte)80};
		        byte[] redRGB = new byte[]{(byte)255, (byte)0, (byte)0};
		        byte[] whiteRGB = new byte[]{(byte)255, (byte)255, (byte)255};
		        
		        boolean isWrapText = true;boolean isBoldText = true;boolean isItalicText = false; int fontSize = 11;String fontName = "Times New Roman";
		        CellStyle blueStyle = cellFormating(workBook,blueRGB,HorizontalAlignment.CENTER,VerticalAlignment.CENTER,isWrapText,isBoldText,isItalicText,fontSize,fontName);
		        CellStyle yellowStyle = cellFormating(workBook,yellowRGB,HorizontalAlignment.CENTER,VerticalAlignment.CENTER,isWrapText,isBoldText,isItalicText,fontSize,fontName);
		        CellStyle greenStyle = cellFormating(workBook,greenRGB,HorizontalAlignment.CENTER,VerticalAlignment.CENTER,isWrapText,isBoldText,isItalicText,fontSize,fontName);
		        CellStyle redStyle = cellFormating(workBook,redRGB,HorizontalAlignment.CENTER,VerticalAlignment.CENTER,isWrapText,isBoldText,isItalicText,fontSize,fontName);
		        CellStyle whiteStyle = cellFormating(workBook,whiteRGB,HorizontalAlignment.CENTER,VerticalAlignment.CENTER,isWrapText,isBoldText,isItalicText,fontSize,fontName);
		        
		        CellStyle indexWhiteStyle = cellFormating(workBook,whiteRGB,HorizontalAlignment.LEFT,VerticalAlignment.CENTER,isWrapText,isBoldText,isItalicText,fontSize,fontName);
		        
		        isWrapText = true;isBoldText = false;isItalicText = false; fontSize = 9;fontName = "Times New Roman";
		        CellStyle sectionStyle = cellFormating(workBook,whiteRGB,HorizontalAlignment.LEFT,VerticalAlignment.CENTER,isWrapText,isBoldText,isItalicText,fontSize,fontName);
		        
		        
	            XSSFRow headingRow = sheet.createRow(0);
	        	String headerString = "Incident Code,SBU,Project,Department,Description,Level,Risk,Date,Raised By" + 
	    				"";
	            String[] firstHeaderStringArr = headerString.split("\\,");
	            
	            for (int i = 0; i < firstHeaderStringArr.length; i++) {		        	
		        	Cell cell = headingRow.createCell(i);
			        cell.setCellStyle(greenStyle);
					cell.setCellValue(firstHeaderStringArr[i]);
				}
	            
	            short rowNo = 1;
	            for (DashBoardWeighBridge obj1 : dataList) {
	                XSSFRow row = sheet.createRow(rowNo);
	                int c = 0;
	            
	                Cell cell = row.createCell(c++);
					cell.setCellStyle(sectionStyle);
					cell.setCellValue(obj1.getVEHICLENO());
					

					String date = obj1.getDATEIN();
					try{
						 if(date.contains(" ")){
					            String [] finalDate = date.split(" ");
					            date = finalDate[0];
					        }
					}catch(Exception e) {
						date = obj1.getDateIN();
						if(date.contains(" ")){
				            String [] finalDate = date.split(" ");
				            date = finalDate[0];
				        }
					}
				   
					   
					cell = row.createCell(c++);
					cell.setCellStyle(sectionStyle);
					cell.setCellValue (date);
					
					cell = row.createCell(c++);
					cell.setCellStyle(sectionStyle);
					cell.setCellValue (obj1.getTimeIN());
					
					cell = row.createCell(c++);
					cell.setCellStyle(sectionStyle);
					cell.setCellValue (obj1.getFIRSTWEIGHT());
					
					  String dateO = obj1.getDATEOUT();
						try{
							 if(dateO.contains(" ")){
						            String [] finalDate = dateO.split(" ");
						            dateO = finalDate[0];
						        }
						}catch(Exception e) {
							dateO = obj1.getDateOUT();
							if(dateO.contains(" ")){
					            String [] finalDate = dateO.split(" ");
					            dateO = finalDate[0];
					        }
						}
						
						cell = row.createCell(c++);
						cell.setCellStyle(sectionStyle);
						cell.setCellValue (dateO);
						
						cell = row.createCell(c++);
						cell.setCellStyle(sectionStyle);
						cell.setCellValue (obj1.getTimeOUT());
						
						cell = row.createCell(c++);
						cell.setCellStyle(sectionStyle);
						cell.setCellValue (obj1.getSECONDWEIGHT());
						

						if(StringUtils.isEmpty((obj1.getSiteID()))){
							cell = row.createCell(c++);
							cell.setCellStyle(sectionStyle);
							cell.setCellValue (obj1.getSiteID());
						}else {
							cell = row.createCell(c++);
							cell.setCellStyle(sectionStyle);
							cell.setCellValue (obj1.getSiteID());
						}
						
					
	                rowNo++;
	            }
	            if(dataList.size() == 0) {
	            	 XSSFRow row = sheet.createRow(rowNo);
		                int c = 0;
		                Cell cell = row.createCell(c++);
						cell.setCellStyle(null);
						cell.setCellValue("No Data");
	            }
	            for(int columnIndex = 0; columnIndex < firstHeaderStringArr.length; columnIndex++) {
	        		sheet.setColumnWidth(columnIndex, 25 * 200);
	        		sheet.setColumnWidth(4, 100 * 200);
				}
                DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd-HHmmss");
                Date date = new Date();
                String fileName = "IRM_"+dateFormat.format(date);
                
	            try{
	                /*FileOutputStream fos = new FileOutputStream(fileDirectory +fileName+".xls");
	                workBook.write(fos);
	                fos.flush();*/
	            	
	               response.setContentType("application/.csv");
	 			   response.setContentType("application/vnd.openxmlformats-officedocument.spreadsheetml.sheet");
	 			   response.setContentType("application/vnd.ms-excel");
	 			   // add response header
	 			   response.addHeader("Content-Disposition", "attachment; filename=" + fileName+".xlsx");
	 			   
	 			    //copies all bytes from a file to an output stream
	 			   workBook.write(response.getOutputStream()); // Write workbook to response.
		           workBook.close();
	 			    //flushes output stream
	 			    response.getOutputStream().flush();
	            	
	                
	                attributes.addFlashAttribute("success",dataExportSucess);
	            	//response.setContentType("application/vnd.ms-excel");
	            	//response.setHeader("Content-Disposition", "attachment; filename=filename.xls");
	            	//XSSFWorkbook  workbook = new XSSFWorkbook ();
	            	// ...
	            	// Now populate workbook the usual way.
	            	// ...
	            	//workbook.write(response.getOutputStream()); // Write workbook to response.
	            	//workbook.close();
	            }catch(FileNotFoundException e){
	                //e.printStackTrace();
	                attributes.addFlashAttribute("error",dataExportInvalid);
	            }catch(IOException e){
	                //e.printStackTrace();
	                attributes.addFlashAttribute("error",dataExportError);
	            }
         }else{
        	 attributes.addFlashAttribute("error",dataExportNoData);
         }
		}catch(Exception e){	
			e.printStackTrace();
			logger.error("exportCompany : : User Id - "+userId+" - User Name - "+userName+" - "+e.getMessage());
			attributes.addFlashAttribute("error", commonError);			
		}
		//return view;
	}
	

	private CellStyle cellFormating(XSSFWorkbook workBook,byte[] rgb,HorizontalAlignment hAllign, VerticalAlignment vAllign, boolean isWrapText,boolean isBoldText,boolean isItalicText,int fontSize,String fontName) {
		CellStyle style = workBook.createCellStyle();
		//Setting Background color  
		//style.setFillBackgroundColor(IndexedColors.AQUA.getIndex());
		style.setFillPattern(FillPatternType.SOLID_FOREGROUND);
		
		if (style instanceof XSSFCellStyle) {
		   XSSFCellStyle xssfcellcolorstyle = (XSSFCellStyle)style;
		   xssfcellcolorstyle.setFillForegroundColor(new XSSFColor(rgb, null));
		}
		//style.setFillPattern(FillPatternType.ALT_BARS);
		style.setBorderBottom(BorderStyle.MEDIUM);
		style.setBorderTop(BorderStyle.MEDIUM);
		style.setBorderLeft(BorderStyle.MEDIUM);
		style.setBorderRight(BorderStyle.MEDIUM);
		style.setAlignment(hAllign);
		style.setVerticalAlignment(vAllign);
		style.setWrapText(isWrapText);
		
		Font font = workBook.createFont();
        //font.setColor(HSSFColor.HSSFColorPredefined.WHITE.getIndex());
        font.setFontHeightInPoints((short)fontSize);  
        font.setFontName(fontName);  //"Times New Roman"
        
        font.setItalic(isItalicText); 
        font.setBold(isBoldText);
        // Applying font to the style  
        style.setFont(font); 
        
        return style;
	}
}
