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
    <title>IWM - User</title> 
    <link rel="apple-touch-icon" href="/nagpurCND/resources//images/ico/apple-icon-120.html">
    <link rel="shortcut icon" type="image/x-icon" href="/nagpurCND/resources/images/logo/logo.png">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,300;0,400;0,500;0,600;1,400;1,500;1,600" rel="stylesheet">

    <!-- BEGIN: Vendor CSS-->
    <link rel="stylesheet" type="text/css" href="/nagpurCND/resources//vendors/css/vendors.min.css">
    <link rel="stylesheet" type="text/css" href="/nagpurCND/resources//vendors/css/tables/datatable/dataTables.bootstrap5.min.css">
    <link rel="stylesheet" type="text/css" href="/nagpurCND/resources//vendors/css/tables/datatable/responsive.bootstrap5.min.css">
    <link rel="stylesheet" type="text/css" href="/nagpurCND/resources//vendors/css/tables/datatable/buttons.bootstrap5.min.css">
    <link rel="stylesheet" type="text/css" href="/nagpurCND/resources//vendors/css/tables/datatable/rowGroup.bootstrap5.min.css">
    <link rel="stylesheet" type="text/css" href="/nagpurCND/resources//vendors/css/pickers/flatpickr/flatpickr.min.css">
    <!-- END: Vendor CSS-->

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
<!-- Basic table -->

<!--/ Basic table -->
<div class="content-header row">
          <div class="content-header-left col-md-9 col-12 mb-2">
            <div class="row breadcrumbs-top">
              <div class="col-12">
                <h2 class="content-header-title float-start mb-0">
                  <c:if test="${action eq 'add' }">
 				Add User
		        </c:if>
		        <c:if test="${action eq 'edit' }">
		 				 Update User
		        </c:if>
                </h2>
                <div class="breadcrumb-wrapper">
                  <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="<%=request.getContextPath() %>/nagpurCND-User">User Management</a>
                    </li>
                      <c:if test="${action eq 'add' }">
 				 <li class="breadcrumb-item"><a>Add User Form</a>
                    </li>
		        </c:if>
		        <c:if test="${action eq 'edit' }">
		 				 <li class="breadcrumb-item"><a>Updated User</a>
                    </li> 
		        </c:if>
                  </ol>
                </div>
              </div>
            </div>
          </div>
          <div class="content-header-right text-md-end col-md-3 col-12 d-md-block d-none">
            <div class="mb-1 breadcrumb-right">
              
            </div>
          </div>
        </div>
<!-- Complex Headers -->
<section id="complex-header-datatable">
   <div class="col-12">
      <div class="card">
        <div class="card-header">
          <h2 class="card-title fw-bolder"><button type="button" class="btn btn-icon btn-icon rounded-circle btn btn-relief-dark">
              <i data-feather='users'></i>
            </button>
              <c:if test="${action eq 'add' }">
 				Add New User
		        </c:if>
		        <c:if test="${action eq 'edit' }">
		 				 Update Details for - ${UserDetails.user_id }
		        </c:if>
            </h2>
        </div>
       <div class="card-body">
       <div class="col-md-12 col-12">
      
      <div class="card">
        <div class="card-body p-2">
          <c:if test="${action eq 'add' }">
 				 <form id="jquery-val-form" action="<%=request.getContextPath() %>/add-user-nagpurCND" method="post" novalidate="novalidate">
 		 </c:if>
		        <c:if test="${action eq 'edit' }">
		 		 <form id="jquery-val-form" action="<%=request.getContextPath() %>/update-user-nagpurCND" method="post" novalidate="novalidate">
		         
		        </c:if>
           
           <c:if test="${action eq 'add' }">
                <div class="row">
            <div class="mb-1 col-md-6">
            
             <label class="form-label" for="basic-default-name">User ID</label>  <span class=re-text>*</span>
              <input type="text" class="form-control" id="user_id" name="user_id" placeholder="Name" value="${UserDetails.user_name }">
            </div>
            <div class="mb-1 col-md-6">
             <label class="form-label" for="basic-default-name">User Name</label>  <span class=re-text>*</span>
              <input type="text" class="form-control" id="user_name" name="user_name" placeholder="Name" value="${UserDetails.user_name }">
            </div>
          </div>
             </c:if>
            <c:if test="${action eq 'edit' }">
            <div class="row">
            <div class="mb-1 col-md-6">
             <input type="hidden" id="id" name="user_id" value="${UserDetails.user_id }" />
             <label class="form-label" for="basic-default-name">Customer Name</label>  <span class=re-text>*</span>
              <input type="text" class="form-control" id="user_name" name="user_name" placeholder="Name" value="${UserDetails.user_name }">
            </div>
            
            <div class="mb-1 col-md-6">
               <label class="form-label" for="basic-default-email">Email</label>  <span class=re-text>*</span>
              <input type="text" id="email_id" name="email_id" class="form-control" placeholder="RE@email.com" value="${UserDetails.email_id }">
            
            </div>
          </div>
             </c:if>
     
            <c:if test="${action eq 'add' }">
     <div class="row">
      	   <div class="mb-1 col-md-6">
               <label class="form-label" for="basic-default-email">Email</label>  <span class=re-text>*</span>
              <input type="text" id="email_id" name="email_id" class="form-control" placeholder="RE@email.com" value="${UserDetails.email_id }">
            </div>
            
       	<div class="mb-1 col-md-6">
    	<label class="form-label" for="basic-default-password">Password</label>
	    <div class="input-group">
	        <input type="password" id="basic-default-password" name="password" class="form-control" placeholder="············">
	        <button class="btn btn-outline-secondary" type="button" id="togglePassword">
	            <i class="fas fa-eye" id="toggleIcon"></i>
	        </button>
	    	</div>
		</div>
	

          </div>
          </c:if>
          <div class="row">
            <div class="mb-1 col-md-6">
            <label class="form-label" for="basic-number">Mobile Number</label>  <span class=re-text>*</span>
              <input type="number" id="phone" name="phone" class="form-control" placeholder="999-999-9999" value="${UserDetails.phone }">
            
            </div>
             <div class="mb-1 col-md-4">
             <label class="form-label" for="select-status">Select Role</label>  <span class=re-text>*</span>
              <div class="position-relative">
              <select class="form-select select2 select2-hidden-accessible" id="base_role" name="base_role" 
               data-select2-id="Select-City" tabindex="4" aria-hidden="true">
               	<option value="Member" <c:if test="${UserDetails.base_role == 'Member' }">selected</c:if> >Member</option>
               	<option value="Admin" <c:if test="${UserDetails.base_role == 'Admin' }">selected</c:if> >Admin</option>
              </select>
              </div>
            </div>
          </div>
        
           <div class="mb-1 col-md-4">
             <label class="form-label" for="select-status">Select Status</label>  <span class=re-text>*</span>
              <div class="position-relative">
              <select class="form-select select2 select2-hidden-accessible" id="status" name="status" 
               data-select2-id="Select-City" tabindex="4" aria-hidden="true">
               	<option value="Active" <c:if test="${UserDetails.status == 'Active' }">selected</c:if> >Active</option>
               	<option value="Inactive" <c:if test="${UserDetails.status == 'Inactive' }">selected</c:if> >Inactive</option>		
              </select>
              </div>
            </div>
       
          
       <div class="col-md-12 col-12 text-center mt-2">
               <button type="submit" class="btn btn-primary waves-effect waves-float waves-light" name="submit" >Submit</button>
                <a href="<%=request.getContextPath() %>/nagpurCND-User" class="btn btn-dark waves-effect waves-float waves-light"><i data-feather='chevrons-left'></i>Back</a>
              </div>
           
          </form>
        </div>
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
    <button class="btn btn-primary btn-icon scroll-top waves-effect waves-float waves-light" type="button"><svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-arrow-up">
    <line x1="12" y1="19" x2="12" y2="5"></line>
    <polyline points="5 12 12 5 19 12"></polyline></svg></button>
    <!-- END: Footer-->


    <!-- BEGIN: Vendor JS-->
    <script src="/nagpurCND/resources//vendors/js/vendors.min.js"></script>
    <!-- BEGIN Vendor JS-->

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
	<script src="https://kit.fontawesome.com/a076d05399.js"></script>

    <!-- BEGIN: Theme JS-->
    <script src="/nagpurCND/resources//js/core/app-menu.min.js"></script>
    <script src="/nagpurCND/resources//js/core/app.min.js"></script>
    <script src="/nagpurCND/resources//js/scripts/customizer.min.js"></script>
    <!-- END: Theme JS-->

    <!-- BEGIN: Page JS-->
    <script src="/nagpurCND/resources//js/scripts/tables/table-datatables-basic.min.js"></script>
    <!-- END: Page JS-->
    <script src="/nagpurCND/resources/vendors/js/pickers/pickadate/picker.js"></script>
    <script src="/nagpurCND/resources/vendors/js/pickers/pickadate/picker.date.js"></script>
    <script src="/nagpurCND/resources/vendors/js/pickers/pickadate/picker.time.js"></script>
    <script src="/nagpurCND/resources/vendors/js/pickers/pickadate/legacy.js"></script>
    <script src="/nagpurCND/resources/vendors/js/pickers/flatpickr/flatpickr.min.js"></script>
        <script src="/nagpurCND/resources/js/scripts/forms/pickers/form-pickers.min.js"></script>
    <script>
 $(window).on('load',  function(){
	 	getCitiesFilterListWithSBUForUserOnLoad();
        if (feather) {
          feather.replace({ width: 14, height: 14 });
        }
      })
       document.getElementById("currentYear").innerHTML = new Date().getFullYear();
 document.getElementById('togglePassword').addEventListener('click', function() {
     var passwordInput = document.getElementById('basic-default-password');
     var icon = document.getElementById('toggleIcon');

     if (passwordInput.type === 'password') {
         passwordInput.type = 'text';
         icon.classList.remove('fa-eye');
         icon.classList.add('fa-eye-slash');
     } else {
         passwordInput.type = 'password';
         icon.classList.remove('fa-eye-slash');
         icon.classList.add('fa-eye');
     }
 });

 document.getElementById('toggleConfirmPassword').addEventListener('click', function() {
     var confirmPasswordInput = document.getElementById('confirm-password');
     var confirmIcon = document.getElementById('toggleConfirmIcon');

     if (confirmPasswordInput.type === 'password') {
         confirmPasswordInput.type = 'text';
         confirmIcon.classList.remove('fa-eye');
         confirmIcon.classList.add('fa-eye-slash');
     } else {
         confirmPasswordInput.type = 'password';
         confirmIcon.classList.remove('fa-eye-slash');
         confirmIcon.classList.add('fa-eye');
     }
 });
 
 
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
      </div></div><div class="flatpickr-days" tabindex="-1"><div class="dayContainer"><span class="flatpickr-day prevMonthDay" aria-label="January 28, 2024" tabindex="-1">28</span><span class="flatpickr-day prevMonthDay" aria-label="January 29, 2024" tabindex="-1">29</span><span class="flatpickr-day prevMonthDay" aria-label="January 30, 2024" tabindex="-1">30</span><span class="flatpickr-day prevMonthDay" aria-label="January 31, 2024" tabindex="-1">31</span><span class="flatpickr-day " aria-label="February 1, 2024" tabindex="-1">1</span><span class="flatpickr-day " aria-label="February 2, 2024" tabindex="-1">2</span><span class="flatpickr-day " aria-label="February 3, 2024" tabindex="-1">3</span><span class="flatpickr-day " aria-label="February 4, 2024" tabindex="-1">4</span><span class="flatpickr-day " aria-label="February 5, 2024" tabindex="-1">5</span><span class="flatpickr-day " aria-label="February 6, 2024" tabindex="-1">6</span><span class="flatpickr-day " aria-label="February 7, 2024" tabindex="-1">7</span><span class="flatpickr-day " aria-label="February 8, 2024" tabindex="-1">8</span><span class="flatpickr-day " aria-label="February 9, 2024" tabindex="-1">9</span><span class="flatpickr-day " aria-label="February 10, 2024" tabindex="-1">10</span><span class="flatpickr-day " aria-label="February 11, 2024" tabindex="-1">11</span><span class="flatpickr-day " aria-label="February 12, 2024" tabindex="-1">12</span><span class="flatpickr-day " aria-label="February 13, 2024" tabindex="-1">13</span><span class="flatpickr-day " aria-label="February 14, 2024" tabindex="-1">14</span><span class="flatpickr-day " aria-label="February 15, 2024" tabindex="-1">15</span><span class="flatpickr-day " aria-label="February 16, 2024" tabindex="-1">16</span><span class="flatpickr-day today" aria-label="February 17, 2024" aria-current="date" tabindex="-1">17</span><span class="flatpickr-day " aria-label="February 18, 2024" tabindex="-1">18</span><span class="flatpickr-day " aria-label="February 19, 2024" tabindex="-1">19</span><span class="flatpickr-day " aria-label="February 20, 2024" tabindex="-1">20</span><span class="flatpickr-day " aria-label="February 21, 2024" tabindex="-1">21</span><span class="flatpickr-day " aria-label="February 22, 2024" tabindex="-1">22</span><span class="flatpickr-day " aria-label="February 23, 2024" tabindex="-1">23</span><span class="flatpickr-day " aria-label="February 24, 2024" tabindex="-1">24</span><span class="flatpickr-day " aria-label="February 25, 2024" tabindex="-1">25</span><span class="flatpickr-day " aria-label="February 26, 2024" tabindex="-1">26</span><span class="flatpickr-day " aria-label="February 27, 2024" tabindex="-1">27</span><span class="flatpickr-day " aria-label="February 28, 2024" tabindex="-1">28</span><span class="flatpickr-day " aria-label="February 29, 2024" tabindex="-1">29</span><span class="flatpickr-day nextMonthDay" aria-label="March 1, 2024" tabindex="-1">1</span><span class="flatpickr-day nextMonthDay" aria-label="March 2, 2024" tabindex="-1">2</span><span class="flatpickr-day nextMonthDay" aria-label="March 3, 2024" tabindex="-1">3</span><span class="flatpickr-day nextMonthDay" aria-label="March 4, 2024" tabindex="-1">4</span><span class="flatpickr-day nextMonthDay" aria-label="March 5, 2024" tabindex="-1">5</span><span class="flatpickr-day nextMonthDay" aria-label="March 6, 2024" tabindex="-1">6</span><span class="flatpickr-day nextMonthDay" aria-label="March 7, 2024" tabindex="-1">7</span><span class="flatpickr-day nextMonthDay" aria-label="March 8, 2024" tabindex="-1">8</span><span class="flatpickr-day nextMonthDay" aria-label="March 9, 2024" tabindex="-1">9</span></div></div></div></div></div></body><!-- END: Body--><!-- Mirrored from pixinvent.com/demo/vuexy-html-bootstrap-admin-template/html/ltr/vertical-menu-template/table-datatable-basic.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 07 Aug 2022 05:42:05 GMT --></html><html lang="en">
<head>
<meta charset="utf-8">
<link rel="icon" href="/logo.png">
<meta name="viewport" content="width=device-width,initial-scale=1">
<meta name="theme-color" content="#000000">
<meta name="description"
	content="Resustainability is a one-stop solution provider to its clients for all its environmental issues including water pollution, waste water treatment and contamination.">
<link rel="apple-touch-icon" href="/logo.png">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="">
<link
	href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;0,800;1,300&amp;display=swap"
	rel="stylesheet">

<title>Add User</title>
<script src="/nagpurCND/resources/js/jQuery-v.3.5.min.js"  ></script>

 <!-- BEGIN: Vendor CSS-->
         <link rel="shortcut icon" type="image/x-icon" href="/nagpurCND/resources/images/logo/logo.png">
	<link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,300;0,400;0,500;0,600;1,400;1,500;1,600" rel="stylesheet">
    <!-- BEGIN: Vendor CSS-->
     <link rel="stylesheet" type="text/css" href="/nagpurCND/resources/vendors/css/vendors.min.css">
    <link rel="stylesheet" type="text/css" href="/nagpurCND/resources/vendors/css/forms/select/select2.min.css">
    <link rel="stylesheet" type="text/css" href="/nagpurCND/resources/vendors/css/pickers/flatpickr/flatpickr.min.css">
    <!-- END: Vendor CSS-->

    <!-- BEGIN: Theme CSS-->
    <link rel="stylesheet" type="text/css" href="/nagpurCND/resources/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="/nagpurCND/resources/css/bootstrap-extended.min.css">
    <link rel="stylesheet" type="text/css" href="/nagpurCND/resources/css/colors.min.css">
    <link rel="stylesheet" type="text/css" href="/nagpurCND/resources/css/components.min.css">
    <link rel="stylesheet" type="text/css" href="/nagpurCND/resources/css/themes/dark-layout.min.css">
    <link rel="stylesheet" type="text/css" href="/nagpurCND/resources/css/themes/bordered-layout.min.css">
    <link rel="stylesheet" type="text/css" href="/nagpurCND/resources/css/themes/semi-dark-layout.min.css">

    <!-- BEGIN: Page CSS-->
    <link rel="stylesheet" type="text/css" href="/nagpurCND/resources/css/core/menu/menu-types/horizontal-menu.min.css">
    <link rel="stylesheet" type="text/css" href="/nagpurCND/resources/css/plugins/forms/form-validation.css">
    <link rel="stylesheet" type="text/css" href="/nagpurCND/resources/css/plugins/forms/pickers/form-flat-pickr.min.css">
    <!-- END: Page CSS-->

    <!-- BEGIN: Custom CSS-->
    <link rel="stylesheet" type="text/css" href="/nagpurCND/resources/css/style.css">




    <!-- BEGIN: Vendor CSS-->
      <link rel="apple-touch-icon" href="/nagpurCND/resources/images/ico/apple-icon-120.html">
	<link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,300;0,400;0,500;0,600;1,400;1,500;1,600" rel="stylesheet">
    <!-- BEGIN: Vendor CSS-->
     <link rel="stylesheet" type="text/css" href="/nagpurCND/resources/vendors/css/vendors.min.css">
    <link rel="stylesheet" type="text/css" href="/nagpurCND/resources/vendors/css/forms/select/select2.min.css">
    <link rel="stylesheet" type="text/css" href="/nagpurCND/resources/vendors/css/pickers/flatpickr/flatpickr.min.css">
    <!-- END: Vendor CSS-->

    <!-- BEGIN: Theme CSS-->
    <link rel="stylesheet" type="text/css" href="/nagpurCND/resources/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="/nagpurCND/resources/css/bootstrap-extended.min.css">
    <link rel="stylesheet" type="text/css" href="/nagpurCND/resources/css/colors.min.css">
    <link rel="stylesheet" type="text/css" href="/nagpurCND/resources/css/components.min.css">
    <link rel="stylesheet" type="text/css" href="/nagpurCND/resources/css/themes/dark-layout.min.css">
    <link rel="stylesheet" type="text/css" href="/nagpurCND/resources/css/themes/bordered-layout.min.css">
    <link rel="stylesheet" type="text/css" href="/nagpurCND/resources/css/themes/semi-dark-layout.min.css">

    <!-- BEGIN: Page CSS-->
    <link rel="stylesheet" type="text/css" href="/nagpurCND/resources/css/core/menu/menu-types/horizontal-menu.min.css">
    <link rel="stylesheet" type="text/css" href="/nagpurCND/resources/css/plugins/forms/pickers/form-flat-pickr.min.css">
    <!-- END: Page CSS-->

    <!-- BEGIN: Custom CSS-->
    <link rel="stylesheet" type="text/css" href="/nagpurCND/resources/css/style.css">
<style>
nav {
    background-color: rgb(255 255 255 / 85%)!important;
}
</style>
</head>
<body >
<!-- BEGIN: Header-->
    <jsp:include page="../views/layout/header.jsp"></jsp:include>
    <!-- END: Header-->


   <!-- BEGIN: Vendor JS-->
    <script src="/nagpurCND/resources/vendors/js/vendors.min.js"></script>
    <!-- BEGIN Vendor JS-->

    <!-- BEGIN: Page Vendor JS-->
    <!-- BEGIN Vendor JS-->

    <!-- BEGIN: Page Vendor JS-->
    <script src="/nagpurCND/resources/vendors/js/ui/jquery.sticky.js"></script>
    <script src="/nagpurCND/resources/vendors/js/forms/select/select2.full.min.js"></script>
    <script src="/nagpurCND/resources/vendors/js/forms/validation/jquery.validate.min.js"></script>
    <script src="/nagpurCND/resources/vendors/js/pickers/flatpickr/flatpickr.min.js"></script>
    <!-- END: Page Vendor JS-->

    <!-- BEGIN: Theme JS-->
    <script src="/nagpurCND/resources/js/core/app-menu.min.js"></script>
    <script src="/nagpurCND/resources/js/core/app.min.js"></script>
    <script src="/nagpurCND/resources/js/scripts/customizer.min.js"></script>
    <!-- END: Theme JS-->

    <!-- BEGIN: Page JS-->
    <script src="/nagpurCND/resources/js/scripts/forms/form-validation.js"></script>
    <!-- END: Page JS-->
    <!-- END: Page JS-->
    
       <!-- BEGIN: Vendor JS-->
    <script src="/nagpurCND/resources/vendors/js/vendors.min.js"></script>
    <!-- BEGIN Vendor JS-->

    <!-- BEGIN: Page Vendor JS-->
  <script src="/nagpurCND/resources/vendors/js/vendors.min.js"></script>
    <!-- BEGIN Vendor JS-->

    <!-- BEGIN: Page Vendor JS-->
    <script src="/nagpurCND/resources/vendors/js/ui/jquery.sticky.js"></script>
    <script src="/nagpurCND/resources/vendors/js/forms/select/select2.full.min.js"></script>
    <script src="/nagpurCND/resources/vendors/js/forms/validation/jquery.validate.min.js"></script>
    <script src="/nagpurCND/resources/vendors/js/pickers/flatpickr/flatpickr.min.js"></script>
    <!-- END: Page Vendor JS-->

    <!-- BEGIN: Theme JS-->
    <script src="/nagpurCND/resources/js/core/app-menu.min.js"></script>
    <script src="/nagpurCND/resources/js/core/app.min.js"></script>
    <script src="/nagpurCND/resources/js/scripts/customizer.min.js"></script>
    <!-- END: Theme JS-->

    <!-- BEGIN: Page JS-->
    <!-- END: Page JS-->
    <!-- END: Page JS-->
</body>
</html>