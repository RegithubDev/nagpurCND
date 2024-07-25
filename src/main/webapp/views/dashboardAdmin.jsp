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
     <link rel="stylesheet" type="text/css" href="/nagpurCND/resources/css/plugins/forms/pickers/form-flat-pickr.min.css">
        <link rel="stylesheet" type="text/css" href="/nagpurCND/resources/css/plugins/forms/pickers/form-pickadate.min.css">
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
.dilu{
	    font-size: 94%!important;
}
 #card-box {
      border: 2px solid #ccc;
      border-radius: 10px;
      padding: 20px;
      margin: 20px auto;
      background-color: #f9f9f9;
      max-width: 87%; 
    }
    #card-box .card {
      margin: 10px 0;
    }
      #card-box .card:hover .dilu {
      transform: scale(1.05); /* Slightly enlarge the card on hover */
      background-color: #2c9faf!important;; /* Change background color on hover */
      color : white!important;
    }
      #card-box .card:hover .zoom {
      transform: scale(1.15); /* Slightly enlarge the card on hover */
          left: 1rem;
     
    }
       #card-box .card:hover  {
      transform: scale(1.05); /* Slightly enlarge the card on hover */
    }
    .zoom:hover{
      transform: scale(1.05); /* Slightly enlarge the card on hover */
    }
    
    
td{
font-size: 1rem!important;
}
  .count {
      font-size: 2rem;
      font-weight: bold;
    }
     .count-container {
      display: flex;
      align-items: baseline;
    }
    .count-container h6 {
      margin-left: 5px;
      font-weight: normal;
    }
.bgmine {
    position: relative;
   
}

.bgmine::before {
    content: '';
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-image: url("/nagpurCND/resources/images/logo/logo.svg2");
    background-size: contain; /* Ensure the entire image fits within the container */
    background-position: center; /* Center the image */
    background-repeat: no-repeat; /* Prevent the image from repeating */
    opacity: 0.8; /* Set opacity to 50% */
    z-index: -1; /* Ensure the pseudo-element is behind the content */
}
.shadow{
    box-shadow: 0 4px 24px 0 rgba(34, 41, 47, .1);
}
#card-style-variation {
    position: relative;
    padding: 20px;
    border-radius: 10px;
    overflow: hidden;
    background: rgba(128, 128, 128, 0.5); /* 50% transparent grey background */
    z-index: 1;
}

#card-style-variation::before {
    content: '';
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background: inherit; /* Inherit the grey background */
    backdrop-filter: blur(5px); /* Apply blur to the background */
    -webkit-backdrop-filter: blur(5px); /* Apply blur to the background for Safari */
    z-index: -1; /* Ensure the pseudo-element is behind the content */
}

#card-style-variation * {
    position: relative;
    z-index: 2; /* Ensure all content inside the section is above the blurred background */
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
          <div class="content-header-left col-md-6 col-12 mb-2">
            <div class="row breadcrumbs-top">
              <div class="col-12">
                <h2 class="content-header-title float-start mb-0"><span class="badge bg-dark">Nagpur-CND <span class="badge badge-glow bg-info">DASHBOARD</span></span></h2>
                
              </div>
            </div>
          </div>
          
           <div class="demo-inline-spacing  col-md-6 col-12">
          
         <div class="col-md-4 mb-4">
		          <label class="form-label" for="fp-default">From Date</label>
		          <input type="text" id="from_date" name="from_date" class="form-control flatpickr-basic flatpickr-input active" placeholder="YYYY-MM-DD" readonly="readonly">
		        </div>
		       <div class="col-md-4 mb-4">
		          <label class="form-label" for="fp-default">To Date</label>
		          <input type="text" id="to_date" name="to_date" class="form-control flatpickr-basic flatpickr-input active" placeholder="YYYY-MM-DD" readonly="readonly">
		        </div>
		        <a class="btn btn-gradient-dark text-white" onclick="exportCND();"><i data-feather='external-link'></i> Export</a>
          </div>
          </div>

<section id="card-style-variation">
  
  <div id="card-box" class="container shadow">
    <div class="row">
  <div class="demo-inline-spacing">
            <div class="form-check form-switch">
             <input type="hidden" class="form-check-input" >
              <span class=" badge bg-info p-2 btn-outline-info text-white"  for="customSwitch1" id="customSwitch1">Display in Kg</span>
            </div>&nbsp;&nbsp;&nbsp;&nbsp;;&nbsp;
            <div class="form-check form-switch">
              <input type="checkbox" class="form-check-input" id="weightSwitch">
              <span class="badge badge-light-secondary p-2 btn-outline-info text-white" id="customSwitch2">Display in Ton</span>
            </div>
          </div> 

      <div class="col-xl-4 col-lg-6 col-md-6 ">
        <div class="card bg-transparent border-warning">
          <div class="card-body  bgmine shadow" >
        <div class="d-flex justify-content-between align-items-center mb-1">
          <div class="d-flex flex-row">
            <div class="user-info">
               <span class="badge badge-light-dark dilu" id="yesterdy-report-date"></span>
            </div>
          </div>
          <span class="badge rounded-pill badge-light-warning">(Yesterday's Weight)</span>
        </div>
        
            <div class="d-flex justify-content-between align-items-end mt-2 pt-25 zoom">
              <div class="role-heading w-100 count-container">
                <i class="fas fa-weight"></i><h4 class="fw-bolder count text-primary" data-count="${SumNetWT_TodayAndYesterday }">0</h4><h6 id="unit-1" class="fw-bolder">In Kg</h6>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="col-xl-4 col-lg-6 col-md-6">
        <div class="card bg-transparent border-success">
          <div class="card-body bgmine shadow" >
         <div class="d-flex justify-content-between align-items-center mb-1">
          <div class="d-flex flex-row">
            <div class="user-info">
               <span class="badge bg-dark dilu" id="daily-report-date"></span>
            </div>
          </div>
          <span class="badge rounded-pill badge-light-primary">(Today Weight)</span>
        </div>
            <div class="d-flex justify-content-between align-items-end mt-2 pt-25 zoom">
              <div class="role-heading w-100 count-container">
                <i class="fas fa-weight"></i><h4 class="fw-bolder count text-primary" data-count="${SumNetWT_Today }">0</h4><h6 id="unit-2" class="fw-bolder">In Kg</h6>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="col-xl-4 col-lg-6 col-md-6">
        <div class="card bg-transparent border-info">
          <div class="card-body bgmine shadow" >
          
          <div class="d-flex justify-content-between align-items-center mb-1">
          <div class="d-flex flex-row">
            <div class="user-info">
               <span class="badge badge-light-dark dilu" id="monthly-report-date"></span>
            </div>
          </div>
          <span class="badge rounded-pill badge-light-warning">(Monthly Report)</span>
        </div>
     
            <div class="d-flex justify-content-between align-items-end mt-2 pt-25 zoom">
              <div class="role-heading w-100 count-container">
               <i class="fas fa-weight"></i> <h4 class="fw-bolder count text-primary" data-count="${SumNetWT_ThisMonth }">0</h4><h6 id="unit-3" class="fw-bolder">In Kg</h6>
              </div>
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
    
    <script src="/nagpurCND/resources/vendors/js/pickers/pickadate/picker.js"></script>
    <script src="/nagpurCND/resources/vendors/js/pickers/pickadate/picker.date.js"></script>
    <script src="/nagpurCND/resources/vendors/js/pickers/pickadate/picker.time.js"></script>
    <script src="/nagpurCND/resources/vendors/js/pickers/pickadate/legacy.js"></script>
    <script src="/nagpurCND/resources/vendors/js/pickers/flatpickr/flatpickr.min.js"></script>
        <script src="/nagpurCND/resources/js/scripts/forms/pickers/form-pickers.min.js"></script>
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

             <form action="<%=request.getContextPath()%>/reone/export-cnd" name="exportCNDForm" id="exportCNDForm" target="_blank" method="post">	
		        <input type="hidden" name=from_date id="exportfrom_date_filter" />
		        <input type="hidden" name="to_date" id="exportto_date_filter" />
			</form>
   
        
         <form id="getIWM" class="row gy-1 pt-75" action="<%=request.getContextPath() %>/get-nagpurCND-details" method="post" class="form-horizontal" role="form" >
         	  <input type="hidden" id="idVal" name="id"  />
         </form>
    <script>
    
    
    function exportCND(){
    	 var from_date = $("#from_date").val();
         var to_date = $("#to_date").val();
		if(from_date != '' && from_date !=  null || to_date != ''  && to_date !=  null ){
		  	 $("#exportfrom_date_filter").val(from_date);
	     	 $("#exportto_date_filter").val(to_date);
	     	 $("#exportCNDForm ").submit();
		}else{
			alert("Please Select a Date!")
		}
   
  	}
    
    document.addEventListener('DOMContentLoaded', function() {
    	  const countElements = document.querySelectorAll('.count');
    	  const duration = 2000; // Duration of the animation in milliseconds
    	  const weightSwitch = document.getElementById('weightSwitch');

    	  countElements.forEach(countElement => {
    	    const targetValue = parseInt(countElement.getAttribute('data-count'), 10);
    	    const startTime = performance.now();

    	    function updateCount(currentTime) {
    	      const elapsedTime = currentTime - startTime;
    	      const progress = Math.min(elapsedTime / duration, 1); // Ensure progress is between 0 and 1
    	      const currentCount = Math.floor(progress * targetValue);
    	      countElement.textContent = currentCount;

    	      if (progress < 1) {
    	        requestAnimationFrame(updateCount);
    	      } else {
    	        countElement.textContent = targetValue;
    	      }
    	    }

    	    requestAnimationFrame(updateCount);
    	  });

    	  weightSwitch.addEventListener('change', function() {
    	    const unitElements = document.querySelectorAll('[id^=unit-]');
    	    countElements.forEach((countElement, index) => {
    	      const currentValue = parseInt(countElement.getAttribute('data-count'), 10);
    	      if (weightSwitch.checked) {
    	        // Convert to tons
    	        const newValue = (currentValue / 1000).toFixed(2); // 1 ton = 1000 kg
    	        countElement.textContent = newValue;
    	        unitElements[index].textContent = "In Tons";
    	        $('#customSwitch2').addClass(' bg-info')
    	        $('#customSwitch2').removeClass(' badge-light-secondary')
    	        $('#customSwitch1').removeClass(' bg-info')
    	        $('#customSwitch1').addClass(' badge-light-secondary')
    	      } else {
    	        // Convert back to kilograms
    	        countElement.textContent = currentValue;
    	        unitElements[index].textContent = "In Kg";
    	        $('#customSwitch1').addClass(' bg-info')
    	        $('#customSwitch2').removeClass(' bg-info')
    	        $('#customSwitch2').addClass(' badge-light-secondary')
    	        $('#customSwitch1').removeClass(' badge-light-secondary')
    	      }
    	    });
    	  });
    	});
    $(document).ready(function() {
        // Replace these variables with your actual data source
        let dailyWeight = 70; // Example weight for today
        let monthlyWeight = 68; // Example weight for the current month

        // Format today's date
  	    let today = new Date();
  		let yesterday = new Date(today);
  		yesterday.setDate(today.getDate() - 1);
  		
  		let options = { year: 'numeric', month: 'long', day: 'numeric' };
  		let todayFormatted = today.toLocaleDateString(undefined, options);
  		let yesterdayFormatted = yesterday.toLocaleDateString(undefined, options);

        // Update the daily report
        $('#daily-report-date').text(todayFormatted);
        $('#yesterdy-report-date').text(yesterdayFormatted);
        $('#daily-weight').text(dailyWeight);

        // Get current month and year
        let monthFormatted = today.toLocaleDateString(undefined, { year: 'numeric', month: 'long' });

        // Update the monthly report
        $('#monthly-report-date').text(monthFormatted);
        $('#monthly-weight').text(monthlyWeight);
      });
    </script>
     <script async>
        var link = document.createElement( 'link' );
        link.href = 'https://cdnjs.cloudflare.com/ajax/libs/highlight.js/9.12.0/styles/atelier-cave-light.min.css';
        link.rel = 'stylesheet';document.getElementsByTagName( 'head' )[0].appendChild( link );
      </script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/9.12.0/highlight.min.js"></script>
      <script async>hljs.initHighlightingOnLoad();</script>
  
  


</body><!-- END: Body--><!-- Mirrored from pixinvent.com/demo/vuexy-html-bootstrap-admin-template/html/ltr/vertical-menu-template/table-datatable-basic.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 07 Aug 2022 05:42:05 GMT --></html>