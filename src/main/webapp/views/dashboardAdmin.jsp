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
    <title>Dashboard</title>
    <link rel="apple-touch-icon" href="/nagpurCND/resources//images/ico/apple-icon-120.html">
    <link rel="shortcut icon" type="image/x-icon" href="/nagpurCND/resources/images/logo/logo.svg">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,300;0,400;0,500;0,600;1,400;1,500;1,600" rel="stylesheet">
 <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
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
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <!-- END: Custom CSS-->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    
<style>
 #card-box {
      border: 2px solid #ccc;
      border-radius: 10px;
      padding: 20px;
      margin: 20px auto;
      background-color: #f9f9f9;
      max-width: 60%; 
    }
    #card-box .card {
      margin: 10px 0;
    }
      #card-box .card:hover {
      transform: scale(1.05); /* Slightly enlarge the card on hover */
      background-color: #2c9faf; /* Change background color on hover */
    }
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
                <h2 class="content-header-title float-start mb-0"><span class="badge bg-dark">Nagpur-CND <span class="badge badge-glow bg-info">DASHBOARD</span></span></h2>
                
              </div>
            </div>
          </div>
          <div class="content-header-right text-md-end col-md-3 col-12 d-md-block d-none">
            <div class="mb-1 breadcrumb-right">
              
            </div>
          </div>
        </div>

<section id="card-style-variation">
  <!-- Box containing cards -->
  <div id="card-box" class="container">
    <div class="row justify-content-center">
      <!-- Daily Report Card -->
      <div class="col-md-6 col-xl-4 mb-4">
        <div class="card text-center shadow-lg card-custom" style="background-color: #2c9faf; color: #ffffff;">
          <div class="card-body">
            <h4 class="card-title">
              <span style="font-size:x-small;text-decoration: underline;color: white;"><span id="daily-report-date"></span> (Daily Report)</span>
            </h4>
            <ul class="list-unstyled">
              <li><strong>Weight (IN KG's): </strong>
              <span id="daily-weight" style="font-weight: bold;">123</span>
              </li>
            </ul>
          </div>
        </div>
      </div>
      <!-- Monthly Report Card -->
      <div class="col-md-6 col-xl-4 mb-4">
        <div class="card text-center shadow-lg card-custom" style="background-color: #302a2b; color: #ffffff;">
          <div class="card-body">
            <h4 class="card-title">
                   <span style="font-size:x-small;text-decoration: underline;color: white;"><span id="monthly-report-date"></span> (Monthly Report)</span>
            </h4>
            <ul class="list-unstyled">
              <li><strong>Weight (IN KG's): </strong><span id="monthly-weight"style="font-weight: bold;">123</span></li>
            </ul>
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
    <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-arrow-up"><line x1="12" y1="19" x2="12" y2="5"></line><polyline points="5 12 12 5 19 12"></polyline></svg></button>
   
   
     <script src="/nagpurCND/resources/vendors/js/vendors.min.js"></script>
     <script src="/nagpurCND/resources/vendors/js/forms/select/select2.full.min.js"></script>
  

    <!-- BEGIN: Page Vendor JS-->
    <script src="/nagpurCND/resources//vendors/js/tables/datatable/jquery.dataTables.min.js"></script>
    <script src="/nagpurCND/resources//vendors/js/tables/datatable/dataTables.bootstrap5.min.js"></script>
    <script src="/nagpurCND/resources//vendors/js/tables/datatable/dataTables.responsive.min.js"></script>
    <script src="/nagpurCND/resources//vendors/js/tables/datatable/responsive.bootstrap5.min.js"></script>
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


        
        
         <form id="getIWM" class="row gy-1 pt-75" action="<%=request.getContextPath() %>/get-nagpurCND-details" method="post" class="form-horizontal" role="form" >
         	  <input type="hidden" id="idVal" name="id"  />
         </form>
    <script>
    $(document).ready(function () {
        $('#Werks_plant').select2({
        });
    });
  
    $(document).ready(function() {
      // Replace these variables with your actual data source
      let dailyWeight = 70; // Example weight for today
      let monthlyWeight = 68; // Example weight for the current month

      // Format today's date
      let today = new Date();
      let options = { year: 'numeric', month: 'long', day: 'numeric' };
      let todayFormatted = today.toLocaleDateString(undefined, options);

      // Update the daily report
      $('#daily-report-date').text(todayFormatted);
      $('#daily-weight').text(dailyWeight);

      // Get current month and year
      let monthFormatted = today.toLocaleDateString(undefined, { year: 'numeric', month: 'long' });

      // Update the monthly report
      $('#monthly-report-date').text(monthFormatted);
      $('#monthly-weight').text(monthlyWeight);
    });


    
    
    
    
 $(window).on('load',  function(){
    	
        if (feather) {
          feather.replace({ width: 14, height: 14 });
        }
      })
       document.getElementById("currentYear").innerHTML = new Date().getFullYear();
 $(document).ready(function () {
  	 // $('select:not(.searchable)').formSelect();
       //$('.searchable').select2();
        getIWMList();
        $('#clearFilterBtn').tooltip({
            trigger: 'manual' // Set the trigger to 'manual'
          });
     
  });
 


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
		
		function getIWM(id,name,sbu,email_id,mobile_number){
			$('#idVal').val(id);
			document.getElementById("getIWM").submit();	
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