<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

	<link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;700&family=Playfair+Display:wght@400;700&display=swap" rel="stylesheet">
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Nanum+Myeongjo:wght@700;800&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">	
	<link rel="stylesheet" href="resources/fonts/icomoon/style.css">
	<link rel="stylesheet" href="resources/css/bootstrap.min.css">
	<link rel="stylesheet" href="resources/css/jquery-ui.css">
	<link rel="stylesheet" href="resources/css/owl.carousel.min.css">
	<link rel="stylesheet" href="resources/css/owl.theme.default.min.css">
	<link rel="stylesheet" href="resources/css/owl.theme.default.min.css">
	<link rel="stylesheet" href="resources/css/jquery.fancybox.min.css">
	<link rel="stylesheet" href="resources/css/bootstrap-datepicker.css">
	<link rel="stylesheet" href="resources/fonts/flaticon/font/flaticon.css">
	<link rel="stylesheet" href="resources/css/aos.css">
	<link rel="stylesheet" href="resources/css/style_page.css">
	<link rel="stylesheet" href="resources/css/care_service_en.css">  
    <link rel="stylesheet" href="resources/css/style_mypage.css">
	<link rel="stylesheet" href="resources/css/my_resume.css"> 
	<link rel="stylesheet" href="resources/css/my_page.css">
	<script src="https://code.jquery.com/jquery-3.4.1.js"   
		integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="   
		crossorigin="anonymous">
	</script>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
    <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
	<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>

</head>
<body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">

  <div id="overlayer"></div>
		<div class="loader">
	    	<div class="spinner-border text-primary" role="status">
	     		<span class="sr-only">Loading...</span>
		</div>
  </div>


  <div class="site-wrap">

    <div class="site-mobile-menu site-navbar-target">
      <div class="site-mobile-menu-header">
        <div class="site-mobile-menu-close mt-3">
          <span class="icon-close2 js-menu-toggle"></span>
        </div>
      </div>
      <div class="site-mobile-menu-body"></div>
    </div>
</div>

<!--     header 부분 -->
	<tiles:insertAttribute name="header" />
	
	<!-- --------------------------- <body> ---------------------------------------	 -->
    <div id="test" class="slide-item overlay">

    </div>
	
	<div id="body">
		<div class="content-container clearfix">

<!-- 				--------------------------- aside --------------------------------------- -->
		<div id="left_contents" class="3u">
			<tiles:insertAttribute name="aside" />
		</div>							
<!-- 				--------------------------- body --------------------------------------- -->
		<div id="right_contents" class="9u">
			<div class="center" >
					<tiles:insertAttribute name="body" />
			</div>
		</div>				
			
	</div>		
</div>			
<!--     ------------------- <footer> ---------------------------------------				 -->
	<tiles:insertAttribute name="footer" />




  <script src="resources/js/jquery-ui.js"></script>
  <script src="resources/js/popper.min.js"></script>
  <script src="resources/js/bootstrap.min.js"></script>
  <script src="resources/js/owl.carousel.min.js"></script>
  <script src="resources/js/jquery.countdown.min.js"></script>
  <script src="resources/js/jquery.easing.1.3.js"></script>
  <script src="resources/js/aos.js"></script>
  <script src="resources/js/jquery.waypoints.min.js"></script>
  <script src="resources/js/jquery.animateNumber.min.js"></script>
  <script src="resources/js/jquery.fancybox.min.js"></script>
  <script src="resources/js/jquery.sticky.js"></script>
  <script src="resources/js/isotope.pkgd.min.js"></script>
  <script src="resources/js/main.js"></script>
  <script src="resources/js/star.js"></script>


</body>
</html>








