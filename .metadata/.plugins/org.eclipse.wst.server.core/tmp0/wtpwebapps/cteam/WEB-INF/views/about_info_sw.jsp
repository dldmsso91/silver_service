<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype> 
<html>
<head>
<!-- css  -->
<title></title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<link rel="stylesheet" type="text/css"
	href="<c:url value='resources/css/ui.css'/>" />

<!-- jQuery -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
<script src="<c:url value='/resources/js/common.js'/>" charset="utf-8"></script>
<!-- Daum Map API -->
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=269a72416406e08431df9d8c16aa3a48"></script>


</head>
<body data-spy="scroll" data-target=".site-navbar-target"
	data-offset="300">





	<!-- MAIN -->
	<div id="test" class="slide-item overlay"></div>



	<!-- 버스 매뉴 -->
	<div id="gnb" class="gnb">
		<ul>
			<li class="gnb_menu" id="node_find"><a class=""
				href="<c:url value='/about_bis.do'/>"> <img
					src="resources/images/node_icon.png" alt="" class="gnb_icon">
					정류소 찾기
			</a></li>

			<li class="gnb_menu" id="about_info"><a class=""
				href="<c:url value='/about_info.do'/>"> <img
					src="resources/images/bus_icon.png" alt="" class="gnb_icon">
					버스 노선
			</a></li>

			<li class="gnb_menu" id="home"><a class=""
				href="<c:url value='/'/>"> <img src="resources/images/home.png"
					alt="" class="gnb_icon"> 매인화면
			</a></li>

			
		</ul>
	</div>
	<!--                 -->
     
    <div id="body" >
        <div id="searchMenu" class="leftBox">
            <div id="searchBox" class="leftBox" >
                <p class="margin0">버스 번호    <input type="text" value="11" id="routeno" style="width:100px; height:30px;"></p>
                <a  href="#this" id="sc_btn" class="btn" >찾기</a>
            </div>
        </div>
       
        <div id="resultBox" class="leftBox">
          <div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" id="lng" value="11(노곡종점-직지사)" style="width: 150px; height:30px;" ></div>
         &nbsp;&nbsp;
         <div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" id="lng" value="11(김천시청-직지사)" style="width: 150px; height:30px;" ></div>
          &nbsp;&nbsp;
         <div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" id="lng" value="11(중상-직지사)" style="width: 150px; height:30px;" ></div>
           &nbsp;&nbsp;
          <div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" id="lng" value="11(지경-직지사)" style="width: 150px; height:30px;" ></div>
           &nbsp;&nbsp;
         <div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" id="lng" value="11(직지사-김천시외버스터미널)" style="width: 150px; height:30px;" ></div>
          
        </div>
         
        
      
		<div id="bodyBox">
			<div id="mapBox" class="mapBox"></div>
			<div id="infoBox">
                <table id="routeTable" class="routeTable" border="1">
                </table>
            </div> 
		</div>
    </div>
     
   
    <script src="<c:url value='resources/js/map.js'/>" charset="utf-8"></script>
    <script type="text/javascript">
   
	$("#about_info").addClass("selected");
</script>
<script type="text/javascript">
	$("#about_info").addClass("selected");

	fn_clickSetting();
</script>

	<!-- 메인 끝 -->



	</div>
	<script src="resources/js/jquery-3.3.1.min.js"></script>
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
</body>
</html>