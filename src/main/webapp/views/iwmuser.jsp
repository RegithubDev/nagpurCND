<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding = "UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html class="loaded light-layout" lang="en" data-textdirection="ltr" style="--vh: 3.54px;"><!-- BEGIN: Head--><!-- Mirrored from pixinvent.com/demo/vuexy-html-bootstrap-admin-template/html/ltr/vertical-menu-template/table-datatable-basic.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 07 Aug 2022 05:42:05 GMT --><head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,user-scalable=0,minimal-ui">
    <meta name="description" content="Vuexy admin is super flexible, powerful, clean &amp; modern responsive bootstrap 4 admin template with unlimited possibilities.">
    <meta name="keywords" content="admin template, Vuexy admin template, dashboard template, flat admin template, responsive admin template, web app">
    <meta name="author" content="PIXINVENT">
    <title>User</title>
    <link rel="apple-touch-icon" href="/nagpurCND/resources//images/ico/apple-icon-120.html">
    <link rel="shortcut icon" type="image/x-icon" href="/nagpurCND/resources/images/logo/logo.svg">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,300;0,400;0,500;0,600;1,400;1,500;1,600" rel="stylesheet">

    <!-- BEGIN: Vendor CSS-->
     <link rel="stylesheet" type="text/css" href="/nagpurCND/resources/vendors/css/vendors.min.css">
    <link rel="stylesheet" type="text/css" href="/nagpurCND/resources/vendors/css/forms/select/select2.min.css">
    <link rel="stylesheet" type="text/css" href="/nagpurCND/resources//vendors/css/tables/datatable/dataTables.bootstrap5.min.css">
    <link rel="stylesheet" type="text/css" href="/nagpurCND/resources//vendors/css/tables/datatable/responsive.bootstrap5.min.css">
    <link rel="stylesheet" type="text/css" href="/nagpurCND/resources//vendors/css/tables/datatable/buttons.bootstrap5.min.css">
    <link rel="stylesheet" type="text/css" href="/nagpurCND/resources//vendors/css/tables/datatable/rowGroup.bootstrap5.min.css">
    <link rel="stylesheet" type="text/css" href="/nagpurCND/resources//vendors/css/pickers/flatpickr/flatpickr.min.css">
    <!-- END: Vendor CSS-->
  <link rel="stylesheet" type="text/css" href="/nagpurCND/resources/css/plugins/forms/form-validation.css">
    <!-- BEGIN: Theme CSS-->
    <link rel="stylesheet" type="text/css" href="/nagpurCND/resources//css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="/nagpurCND/resources//css/bootstrap-extended.min.css">
    <link rel="stylesheet" type="text/css" href="/nagpurCND/resources//css/colors.min.css">
    <link rel="stylesheet" type="text/css" href="/nagpurCND/resources//css/components.min.css">
    <link rel="stylesheet" type="text/css" href="/nagpurCND/resources//css/themes/dark-layout.min.css">
    <link rel="stylesheet" type="text/css" href="/nagpurCND/resources//css/themes/bordered-layout.min.css">
    <link rel="stylesheet" type="text/css" href="/nagpurCND/resources//css/themes/semi-dark-layout.min.css">

    <!-- BEGIN: Page CSS-->
    <link rel="stylesheet" type="text/css" href="/nagpurCND/resources//css/core/menu/menu-types/vertical-menu.min.css">
    <!-- END: Page CSS-->
  <link rel="stylesheet" type="text/css" href="/nagpurCND/resources/css/plugins/forms/pickers/form-flat-pickr.min.css">
    <link rel="stylesheet" type="text/css" href="/nagpurCND/resources/css/plugins/forms/pickers/form-pickadate.min.css">
    <!-- END: Page CSS-->
    <!-- BEGIN: Custom CSS-->
    <link rel="stylesheet" type="text/css" href="/nagpurCND/resources//assets/css/style.css">
    <!-- END: Custom CSS-->
<style>
td{
font-size: 1rem!important;
}

</style>
  </head>
  <!-- END: Head-->

  <!-- BEGIN: Body-->
  <body class="pace-done vertical-layout vertical-menu-modern navbar-floating footer-static menu-expanded" data-open="click" data-menu="vertical-menu-modern" data-col="" style=""><div class="pace pace-inactive"><div class="pace-progress" data-progress-text="100%" data-progress="99" style="transform: translate3d(100%, 0px, 0px);">
  <div class="pace-progress-inner"></div>
</div>
<div class="pace-activity"></div></div>

    <!-- BEGIN: Header-->
    <jsp:include page="../views/layout/header.jsp"></jsp:include>
    <!-- END: Header-->


    <!-- BEGIN: Main Menu-->
     <jsp:include page="../views/layout/menu.jsp"></jsp:include>
    <!-- END: Main Menu-->

    <!-- BEGIN: Content-->
    <div class="app-content content ">
      <div class="content-overlay"></div>
      <div class="header-navbar-shadow"></div>
      <div class="content-wrapper container-xxl p-0">
   
        <div class="content-body"><div class="row">
</div>

<!--/ Basic table -->

<!-- Complex Headers -->
<div class="content-header row">
          <div class="content-header-left col-md-9 col-12 mb-2">
            <div class="row breadcrumbs-top">
              <div class="col-12">
                <h2 class="content-header-title float-start mb-0"><span class="badge badge-glow bg-dark">Users</span></h2>
                
              </div>
            </div>
          </div>
          <div class="content-header-right text-md-end col-md-3 col-12 d-md-block d-none">
            <div class="mb-1 breadcrumb-right">
              
            </div>
          </div>
        </div>
<section id="complex-header-datatable">
          <div class="content-wrapper container-xxl p-0">
         <!--    <div class="content-header row">
									            <div class="sidebar-toggle d-block d-lg-none ms-1">
											      <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-menu font-medium-5"><line x1="3" y1="12" x2="21" y2="12"></line><line x1="3" y1="6" x2="21" y2="6"></line><line x1="3" y1="18" x2="21" y2="18"></line></svg>
											    </div>
            </div> -->
            <div class="content-body"><div class="body-content-overlay"></div>
            
            
           <div class="card-body" id="filterDiv">
          <div class="row">
          
        <div class="col-xl-2 col-md-6 col-12" style="
    width: 16rem;
    /* padding-right: calc(var(--bs-gutter-x) * 0); */
    ">
           <div class="mb-1">
              <label class="form-label" for="select2-basic">User ID</label>
              <div class="position-relative" ><select  class="searchable form-select " id="user_id" data-select2-id="select2-basic1" tabindex="1" aria-hidden="true">
                <option value="" >Select User ID</option>
               
              </select>
              </div></div>
            </div> 
            
          
            <div class="re-text col-xl-4 col-md-3 col-12">
             <div class="demo-inline-spacing">
            <a type="button" class="btn btn-gradient-danger re-text-bg" onclick="getUserList();"><i data-feather='search'></i> Filter </a>
           <a  onclick="clearFilters();" id="clearFilterBtn"  class="btn btn-gradient-danger re-text-bg "> Clear Filter </a> 
          </div>
            </div>
           
          </div>
        </div> 
        <div class="toast-container position-fixed top-0 end-0 p-2" style="z-index: 15">
  

 
</div>
            <br>
<div class="col-12" id="bigDiv">

      <div class="card" style="border: 1px solid black;padding: 4px;">
								<div >
								<div class="card-header border-bottom p-1">
										<div class="head-label">
											<h6 class="mb-0"><svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeMedium svglogo css-vubbuv" focusable="false" aria-hidden="true" viewBox="0 0 24 24" data-testid="SupervisorAccountOutlinedIcon"><path d="M9 12c1.93 0 3.5-1.57 3.5-3.5S10.93 5 9 5 5.5 6.57 5.5 8.5 7.07 12 9 12zm0-5c.83 0 1.5.67 1.5 1.5S9.83 10 9 10s-1.5-.67-1.5-1.5S8.17 7 9 7zm.05 10H4.77c.99-.5 2.7-1 4.23-1 .11 0 .23.01.34.01.34-.73.93-1.33 1.64-1.81-.73-.13-1.42-.2-1.98-.2-2.34 0-7 1.17-7 3.5V19h7v-1.5c0-.17.02-.34.05-.5zm7.45-2.5c-1.84 0-5.5 1.01-5.5 3V19h11v-1.5c0-1.99-3.66-3-5.5-3zm1.21-1.82c.76-.43 1.29-1.24 1.29-2.18C19 9.12 17.88 8 16.5 8S14 9.12 14 10.5c0 .94.53 1.75 1.29 2.18.36.2.77.32 1.21.32s.85-.12 1.21-.32z"></path></svg> Customers</h6>
										</div>
										<div>
											<div class="dt-buttons d-inline-flex">
											 <a href="<%=request.getContextPath() %>/nagpurCND-adduser" type="button" class="btn btn-gradient-danger re-text-bg m-1"><i data-feather='user-plus'></i> Add New User</a> 
										
					  </div>
					 </div>
					</div>	
					 <table id="datatable-user" class="invoice-list-table table">
				            <thead>
				              <tr>
				                <th >#</th>
				                <th >Action</th>
								<th >User</th>
								<th >Phone</th>
								<th >E-Mail</th>
								<th >Status</th>
								<th >Created by</th>
								<th >Modified by</th>
								
             				</tr>
			            </thead>
			          </table>
					</div>
				</div>
    		</div>
            </div>
          </div>
	</section>
	 
    </div>
  </div>
</div>
    <div class="sidenav-overlay" style="touch-action: pan-y; user-select: none; -webkit-user-drag: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></div>
    <div class="drag-target" style="touch-action: pan-y; user-select: none; -webkit-user-drag: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></div>

    <!-- BEGIN: Footer-->
    <footer class="footer footer-static footer-light">
      <p class="clearfix mb-0"><span class="float-md-start d-block d-md-inline-block mt-25">COPYRIGHT  &copy;  <span id="currentYear"></span> ,| Powered by<a class="ms-25" href="https://ramkyenviroengineers.com/" target="_blank">Re Sustainability Limited</a><span class="d-none d-sm-inline-block"> . All Rights Reserved.</span></span></p>
    </footer>
    <button class="btn btn-primary btn-icon scroll-top waves-effect waves-float waves-light" type="button"><svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-arrow-up"><line x1="12" y1="19" x2="12" y2="5"></line><polyline points="5 12 12 5 19 12"></polyline></svg></button>
   
   
     <script src="/nagpurCND/resources/vendors/js/vendors.min.js"></script>
     <script src="/nagpurCND/resources/vendors/js/forms/select/select2.full.min.js"></script>
  
     <script src="/nagpurCND/resources/js/scripts/forms/form-validation.js"></script>
    <!-- BEGIN Vendor JS--> 
    <script src="/nagpurCND/resources/vendors/js/forms/validation/jquery.validate.min.js"></script> 



<script type="text/javascript" src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />


    <!-- BEGIN: Page Vendor JS-->
    <script src="/nagpurCND/resources//vendors/js/tables/datatable/jquery.dataTables.min.js"></script>
    <script src="/nagpurCND/resources//vendors/js/tables/datatable/dataTables.bootstrap5.min.js"></script>
    <script src="/nagpurCND/resources//vendors/js/tables/datatable/dataTables.responsive.min.js"></script>
    <script src="/nagpurCND/resources//vendors/js/tables/datatable/responsive.bootstrap5.min.js"></script>
    <script src="/nagpurCND/resources//vendors/js/tables/datatable/datatables.checkboxes.min.js"></script>
    <script src="/nagpurCND/resources//vendors/js/tables/datatable/datatables.buttons.min.js"></script>
    <script src="/nagpurCND/resources//vendors/js/tables/datatable/jszip.min.js"></script>
    <script src="/nagpurCND/resources//vendors/js/tables/datatable/pdfmake.min.js"></script>
    <script src="/nagpurCND/resources//vendors/js/tables/datatable/vfs_fonts.js"></script>
    <script src="/nagpurCND/resources//vendors/js/tables/datatable/buttons.html5.min.js"></script>
    <script src="/nagpurCND/resources//vendors/js/tables/datatable/buttons.print.min.js"></script>
    <script src="/nagpurCND/resources//vendors/js/tables/datatable/dataTables.rowGroup.min.js"></script>
    <script src="/nagpurCND/resources//vendors/js/pickers/flatpickr/flatpickr.min.js"></script>
    <!-- END: Page Vendor JS-->
      <script src="/nagpurCND/resources/js2/dataTables.material.min.js"  ></script>
          <script src="/nagpurCND/resources/js2/jquery.dataTables-v.1.10.min.js"  ></script>
              <script src="/nagpurCND/resources/vendors/js/extensions/moment.min.js"></script>
    <script src="/nagpurCND/resources/vendors/js/tables/datatable/jquery.dataTables.min.js"></script>
    <script src="/nagpurCND/resources/vendors/js/tables/datatable/datatables.buttons.min.js"></script>
    <script src="/nagpurCND/resources/vendors/js/tables/datatable/dataTables.bootstrap5.min.js"></script>
    <script src="/nagpurCND/resources/vendors/js/tables/datatable/dataTables.responsive.min.js"></script>
    <script src="/nagpurCND/resources/vendors/js/tables/datatable/responsive.bootstrap5.js"></script>
    <!-- BEGIN: Theme JS-->
     <script src="/nagpurCND/resources/js/scripts/components/components-bs-toast.min.js"></script>
    <script src="/nagpurCND/resources//js/core/app-menu.min.js"></script>
    <script src="/nagpurCND/resources//js/core/app.min.js"></script>
    <script src="/nagpurCND/resources//js/scripts/customizer.min.js"></script>
    <!-- END: Theme JS-->
     <script src="/nagpurCND/resources/js2/datetime-moment-v1.10.12.js"  ></script>
    <!-- BEGIN: Page JS-->
    <script src="/nagpurCND/resources//js/scripts/tables/table-datatables-basic.min.js"></script>
    <!-- END: Page JS-->
    <script src="/nagpurCND/resources/vendors/js/pickers/pickadate/picker.js"></script>
    <script src="/nagpurCND/resources/vendors/js/pickers/pickadate/picker.date.js"></script>
    <script src="/nagpurCND/resources/vendors/js/pickers/pickadate/picker.time.js"></script>
    <script src="/nagpurCND/resources/vendors/js/pickers/pickadate/legacy.js"></script>
    <script src="/nagpurCND/resources/vendors/js/pickers/flatpickr/flatpickr.min.js"></script>
        <script src="/nagpurCND/resources/js/scripts/forms/pickers/form-pickers.min.js"></script>
         <form id="getUser" class="row gy-1 pt-75" action="<%=request.getContextPath() %>/get-user-details" method="post" class="form-horizontal" role="form" >
         	  <input type="hidden" id="idVal" name="user_id"  />
         </form>
    <script>
 $(window).on('load',  function(){
    	
        if (feather) {
          feather.replace({ width: 14, height: 14 });
        }
      })
       document.getElementById("currentYear").innerHTML = new Date().getFullYear();
 $(document).ready(function () {
  	 // $('select:not(.searchable)').formSelect();
      // $('.searchable').select2();
        getUserList();
        $('#clearFilterBtn').tooltip({
            trigger: 'manual' // Set the trigger to 'manual'
          });
     
  });
 function clearFilters(){
		var sbu = $("#sbuID").val();
		var site_name = $("#site_nameID").val();
		var user_id = $("#user_id").val();
		if(user_id != ""){
		    $("#user_id").val("");
			//$("#site_nameID").val("");
			//$("#user_id").val("");
			getUserList();
		}
}

 function getDepartmentFilterList() {
		var sbu = $("#sbuID").val();
		var site_name = $("#site_nameID").val();
		var user_id = $("#user_id").val();
       if ($.trim(sbu) == "") {
       	$("#sbuID option:not(:first)").remove();
       	var myParams = { sbu: sbu, site_name: site_name, user_id : user_id };
           $.ajax({
               url: "<%=request.getContextPath()%>/ajax/getDepartmentFilterListForUser",
               data: myParams, cache: false,async: false,
               success: function (data) {
                   if (data.length > 0) {
                       $.each(data, function (i, val) {
                            $("#sbuID").append('<option value="' + val.sbu + '">' + $.trim(val.sbu) +'</option>');
                       });
                   }
               },error: function (jqXHR, exception) {
   	   			      $(".page-loader").hide();
      	          	  getErrorMessage(jqXHR, exception);
      	     	  }
           });
       }
   }
 
 function getSiteFilterList() {
	 var sbu = $("#sbuID").val();
		var site_name = $("#site_nameID").val();
		var user_id = $("#user_id").val();
       if ($.trim(site_name) == "") {
       	$("#site_nameID option:not(:first)").remove();
     	var myParams = {sbu: sbu, site_name: site_name, user_id : user_id };
           $.ajax({
               url: "<%=request.getContextPath()%>/ajax/getSiteFilterListForUser",
               data: myParams, cache: false,async: false,
               success: function (data) {
                   if (data.length > 0) {
                       $.each(data, function (i, val) {
                            $("#site_nameID").append('<option value="' + val.id + '">' + $.trim(val.site_name) +'</option>');
                       });
                   }
               },error: function (jqXHR, exception) {
   	   			      $(".page-loader").hide();
      	          	  getErrorMessage(jqXHR, exception);
      	     	  }
           });
       }
   }
 
 function getUserFilterList() {
	 var sbu = $("#sbuID").val();
		var site_name = $("#site_nameID").val();
		var user_id = $("#user_id").val();
       if ($.trim(user_id) == "") {
       	$("#user_id option:not(:first)").remove();
       	var myParams = { user_id : user_id };
           $.ajax({
               url: "<%=request.getContextPath()%>/ajax/getUserFilterListForUser",
               data: myParams, cache: false,async: false,
               success: function (data) {
                   if (data.length > 0) {
                       $.each(data, function (i, val) {
                            $("#user_id").append('<option value="' + val.user_id + '">' +'['+val.user_id +'] - '+ $.trim(val.user_name) +'</option>');
                       });
                   }
               },error: function (jqXHR, exception) {
   	   			      $(".page-loader").hide();
      	          	  getErrorMessage(jqXHR, exception);
      	     	  }
           });
       }
   }
 
 
 $(function() {
	  $('input[name="daterange"]').daterangepicker({
	    opens: 'left'
	  }, function(start, end, label) {
	    console.log("A new date selection was made: " + start.format('YYYY-MM-DD') + ' to ' + end.format('YYYY-MM-DD'));
	  });
	});
 
 
 function getUserList() {
		getUserFilterList();
		var user_ids = $("#user_id").val();
	   	table = $('#datatable-user').DataTable();
		table.destroy();
		var i = 1;
		$.fn.dataTable.moment('DD-MMM-YYYY');
		var rowLen = 0;
		var myParams = "user_id="+ user_ids ;

		/***************************************************************************************************/

		$("#datatable-user")
				.DataTable(
						{
							"bProcessing" : true,
							"bServerSide" : true,
							"sort" : "position",
							//bStateSave variable you can use to save state on client cookies: set value "true" 
							"bStateSave" : false,
							 stateSave: true,
							 "fnStateSave": function (oSettings, oData) {
							 	localStorage.setItem('MRVCDataTables', JSON.stringify(oData));
							},
							 "fnStateLoad": function (oSettings) {
								return JSON.parse(localStorage.getItem('MRVCDataTables'));
							 },
							//Default: Page display length
							"iDisplayLength" : 10,
							"iData" : {
								"start" : 52
							},
							//We will use below variable to track page number on server side(For more information visit: http://legacy.datatables.net/usage/options#iDisplayStart)
							"iDisplayStart" : 0,
							"fnDrawCallback" : function() {
								//Get page numer on client. Please note: number start from 0 So
								//for the first page you will see 0 second page 1 third page 2...
								//Un-comment below alert to see page number
								//alert("Current page number: "+this.fnPagingInfo().iPage);
							},
							//"sDom": 'l<"toolbar">frtip',
							"initComplete" : function() {
								$('.dataTables_filter input[type="search"]')
										.attr('placeholder', 'Search')
										.css({
											'width' : '350px ',
											'display' : 'inline-block'
										});

								var input = $('.dataTables_filter input')
										.unbind()
										.bind('keyup',function(e){
										    if (e.which == 13){
										    	self.search(input.val()).draw();
										    }
										}), self = this.api(), $searchButton = $(
										'<i class="fa fa-search" title="Go" >')
								//.text('Go')
								.click(function() {
									self.search(input.val()).draw();
								}), $clearButton = $(
										'<i class="fa fa-close" title="Reset">')
								//.text('X')
								.click(function() {
									input.val('');
									$searchButton.click();
								})
								$('.dataTables_filter').append(
										'<div class="right-btns"></div>');
								$('.dataTables_filter div').append(
										$searchButton, $clearButton);
								rowLen = $('#datatable-user tbody tr:visible').length
								/* var input = $('.dataTables_filter input').unbind(),
								self = this.api(),
								$searchButton = $('<i class="fa fa-search">')
								           //.text('Go')
								           .click(function() {			   	                    	 
								              self.search(input.val()).draw();
								           })			   	        
								  $('.dataTables_filter label').append($searchButton); */
							}
							,
							columnDefs : [ {
								"targets" : '',
								"orderable" : false,
							}
			                ],
							"sScrollX" : "100%",
							"sScrollXInner" : "100%",
							"ordering":false,
							"bScrollCollapse" : true,
							"language" : {
								"info" : "_START_ - _END_ of _TOTAL_",
								paginate : {
									next : '<i class="fa fa-angle-right"></i>', 
									previous : '<i class="fa fa-angle-left"></i>'  
								}
							},
							
							"bDestroy" : true,
							"sAjaxSource" : "	<%=request.getContextPath()%>/ajax/get-users-nagpurCND?"+myParams,
		        "aoColumns": [
		        	 { "mData": function(data,type,row){
                      if($.trim(data.user_id) == ''){ return '-'; }else{ return i++ ; }
		            } },
						{ "mData": function(data,type,row){
							var user_data = "'"+data.id+"','"+data.user_name+"','"+data.user_id+"','"+data.email_id+"','"+data.phone+"'";
		                    var actions =
			                '<div class="btn-group" role="group" aria-label="Basic example">'
			                +' <a href="javascript:void(0);"  onclick="getUser('+user_data+');" class="btn bghover re-text btn-outline-primary waves-effect"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-edit"><path d="M11 4H4a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2v-7"></path><path d="M18.5 2.5a2.121 2.121 0 0 1 3 3L12 15l-4 1 1-4 9.5-9.5z"></path></svg></a>'
            
			                +'</div>'
		            	return actions;
		            } },
		            { "mData": function(data,type,row){
                      if($.trim(data.user_id) == ''){ return '-'; }else{ return '<span class="btn btn-flat-dark waves-effect">['+data.user_id +'] - '+data.user_name+'</span>' ; }
		            } },
		         	{ "mData": function(data,type,row){
                      if($.trim(data.phone) == ''){ return '-'; }else{ return '<span class="btn btn-flat-dark waves-effect">'+data.phone+'</span>' ; }
		            } },
		       
		            { "mData": function(data,type,row){ 
		            	if($.trim(data.email_id) == ''){ return '-'; }else{ return data.email_id; }
		            } },
		        	{ "mData": function(data,type,row){
		            	if($.trim(data.status) == ''){ return '-'; }else{ if(data.status == 'Active') { return '<span class="badge badge-light-success">'+data.status+'</span>'}else{return '<span class="badge badge-light-danger">'+data.status+'</span>'}  ; }
		            } },
		           { "mData": function(data,type,row){
		            	if($.trim(data.created_date) == ''){ return '-'; }else{ return '<span class="badge badge-light-dark">'+data.created_by +'</span><span class="badge badge-light-dark">'+ data.created_date+'</span>'; } 
		            } },
		           { "mData": function(data,type,row){
		            	if($.trim(data.modified_by) == ''){ return '-'; }else{ return '<span class="badge badge-light-dark">'+data.modified_by +'</span><span class="badge badge-light-dark">'+ data.modified_date+'</span>';  } 
		            } }
		        ]
		    });
}

function getErrorMessage(jqXHR, exception) {
	    var msg = '';
	    if (jqXHR.status === 0) {
	        msg = 'Not connect.\n Verify Network.';
	    } else if (jqXHR.status == 404) {
	        msg = 'Requested page not found. [404]';
	    } else if (jqXHR.status == 500) {
	        msg = 'Internal Server Error [500].';
	    } else if (exception === 'parsererror') {
	        msg = 'Requested JSON parse failed.';
	    } else if (exception === 'timeout') {
	        msg = 'Time out error.';
	    } else if (exception === 'abort') {
	        msg = 'Ajax request aborted.';
	    } else {
	        msg = 'Uncaught Error.\n' + jqXHR.responseText;
	    }
	    console.log(msg);
}
		
		function getUser(id,name,user_id,email_id,mobile_number){
			$('#idVal').val(user_id);
			document.getElementById("getUser").submit();	
		}
    </script>
     <script async>
        var link = document.createElement( 'link' );
        link.href = 'https://cdnjs.cloudflare.com/ajax/libs/highlight.js/9.12.0/styles/atelier-cave-light.min.css';
        link.rel = 'stylesheet';document.getElementsByTagName( 'head' )[0].appendChild( link );
      </script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/9.12.0/highlight.min.js"></script>
      <script async>hljs.initHighlightingOnLoad();</script>
  
  


<div class="flatpickr-calendar animate" tabindex="-1"><div class="flatpickr-months"><span class="flatpickr-prev-month"><svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 17 17"><g></g><path d="M5.207 8.471l7.146 7.147-0.707 0.707-7.853-7.854 7.854-7.853 0.707 0.707-7.147 7.146z"></path></svg></span><div class="flatpickr-month"><div class="flatpickr-current-month"><span class="cur-month">February </span><div class="numInputWrapper"><input class="numInput cur-year" type="number" tabindex="-1" aria-label="Year"><span class="arrowUp"></span><span class="arrowDown"></span></div></div></div><span class="flatpickr-next-month"><svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 17 17"><g></g><path d="M13.207 8.472l-7.854 7.854-0.707-0.707 7.146-7.146-7.146-7.148 0.707-0.707 7.854 7.854z"></path></svg></span></div><div class="flatpickr-innerContainer"><div class="flatpickr-rContainer"><div class="flatpickr-weekdays"><div class="flatpickr-weekdaycontainer">
      <span class="flatpickr-weekday">
        Sun</span><span class="flatpickr-weekday">Mon</span><span class="flatpickr-weekday">Tue</span><span class="flatpickr-weekday">Wed</span><span class="flatpickr-weekday">Thu</span><span class="flatpickr-weekday">Fri</span><span class="flatpickr-weekday">Sat
      </span>
      </div></div><div class="flatpickr-days" tabindex="-1"><div class="dayContainer"><span class="flatpickr-day prevMonthDay" aria-label="January 28, 2024" tabindex="-1">28</span><span class="flatpickr-day prevMonthDay" aria-label="January 29, 2024" tabindex="-1">29</span><span class="flatpickr-day prevMonthDay" aria-label="January 30, 2024" tabindex="-1">30</span><span class="flatpickr-day prevMonthDay" aria-label="January 31, 2024" tabindex="-1">31</span><span class="flatpickr-day " aria-label="February 1, 2024" tabindex="-1">1</span><span class="flatpickr-day " aria-label="February 2, 2024" tabindex="-1">2</span><span class="flatpickr-day " aria-label="February 3, 2024" tabindex="-1">3</span><span class="flatpickr-day " aria-label="February 4, 2024" tabindex="-1">4</span><span class="flatpickr-day " aria-label="February 5, 2024" tabindex="-1">5</span><span class="flatpickr-day " aria-label="February 6, 2024" tabindex="-1">6</span><span class="flatpickr-day " aria-label="February 7, 2024" tabindex="-1">7</span><span class="flatpickr-day " aria-label="February 8, 2024" tabindex="-1">8</span><span class="flatpickr-day " aria-label="February 9, 2024" tabindex="-1">9</span><span class="flatpickr-day " aria-label="February 10, 2024" tabindex="-1">10</span><span class="flatpickr-day " aria-label="February 11, 2024" tabindex="-1">11</span><span class="flatpickr-day " aria-label="February 12, 2024" tabindex="-1">12</span><span class="flatpickr-day " aria-label="February 13, 2024" tabindex="-1">13</span><span class="flatpickr-day " aria-label="February 14, 2024" tabindex="-1">14</span><span class="flatpickr-day " aria-label="February 15, 2024" tabindex="-1">15</span><span class="flatpickr-day " aria-label="February 16, 2024" tabindex="-1">16</span><span class="flatpickr-day today" aria-label="February 17, 2024" aria-current="date" tabindex="-1">17</span><span class="flatpickr-day " aria-label="February 18, 2024" tabindex="-1">18</span><span class="flatpickr-day " aria-label="February 19, 2024" tabindex="-1">19</span><span class="flatpickr-day " aria-label="February 20, 2024" tabindex="-1">20</span><span class="flatpickr-day " aria-label="February 21, 2024" tabindex="-1">21</span><span class="flatpickr-day " aria-label="February 22, 2024" tabindex="-1">22</span><span class="flatpickr-day " aria-label="February 23, 2024" tabindex="-1">23</span><span class="flatpickr-day " aria-label="February 24, 2024" tabindex="-1">24</span><span class="flatpickr-day " aria-label="February 25, 2024" tabindex="-1">25</span><span class="flatpickr-day " aria-label="February 26, 2024" tabindex="-1">26</span><span class="flatpickr-day " aria-label="February 27, 2024" tabindex="-1">27</span><span class="flatpickr-day " aria-label="February 28, 2024" tabindex="-1">28</span><span class="flatpickr-day " aria-label="February 29, 2024" tabindex="-1">29</span><span class="flatpickr-day nextMonthDay" aria-label="March 1, 2024" tabindex="-1">1</span><span class="flatpickr-day nextMonthDay" aria-label="March 2, 2024" tabindex="-1">2</span><span class="flatpickr-day nextMonthDay" aria-label="March 3, 2024" tabindex="-1">3</span><span class="flatpickr-day nextMonthDay" aria-label="March 4, 2024" tabindex="-1">4</span><span class="flatpickr-day nextMonthDay" aria-label="March 5, 2024" tabindex="-1">5</span><span class="flatpickr-day nextMonthDay" aria-label="March 6, 2024" tabindex="-1">6</span><span class="flatpickr-day nextMonthDay" aria-label="March 7, 2024" tabindex="-1">7</span><span class="flatpickr-day nextMonthDay" aria-label="March 8, 2024" tabindex="-1">8</span><span class="flatpickr-day nextMonthDay" aria-label="March 9, 2024" tabindex="-1">9</span></div></div></div></div></div></body><!-- END: Body--><!-- Mirrored from pixinvent.com/demo/vuexy-html-bootstrap-admin-template/html/ltr/vertical-menu-template/table-datatable-basic.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 07 Aug 2022 05:42:05 GMT --></html>