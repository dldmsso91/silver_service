<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
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

<title>노선 정보</title>
<script src="https://code.jquery.com/jquery-3.4.1.js"   
	integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="   
	crossorigin="anonymous">
	
</script>

<script type="text/javascript">
	$(function() {

		var inner_item = $(".noLine")

		/*  inner_item.children().hide();

		inner_item1.show(); */

		
		$(".bus1").click(function() {
			inner_item.toggle(function() {
				inner_item.addClass('hide');
			}, function() {
				inner_item.addClass('show');
			});
		});

	});
</script>
</head>
<body>
	<!-- 버스 매뉴 -->
	<div id="gnb" class="gnb">
		<ul>
			<li class="gnb_menu" id="node_find"><a class=""
				href="<c:url value='/bus_main'/>"> <img
					src="resources/images/node_icon.png" alt="" class="gnb_icon">
					정류소 찾기
			</a></li>

			<li class="gnb_menu" id="about_info"><a class=""
				href="<c:url value='/bus_info'/>"> <img
					src="resources/images/bus_icon.png" alt="" class="gnb_icon">
					버스 노선
			</a></li>

			<li class="gnb_menu" id="home"><a class=""
				href="<c:url value='/index'/>"> <img
					src="resources/images/home.png" alt="" class="gnb_icon"> 매인화면
			</a></li>


		</ul>
	</div>


	<!--                 -->

	<div id="body">
		<div id="searchMenu" class="leftBox">
			<div id="searchBox" class="leftBox">
				<p class="margin0">
					버스 번호 <input type="text" id="routeno"
						style="width: 100px; height: 30px;">
				</p>
				<a href="#" id="sc_btn" class="btn">찾기</a>
			</div>
		</div>
		<div id="resultBox" class="leftBox">
			<div class="bus1">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" id="lng"
					value="11(노곡종점-직지사)" style="width: 150px; height: 30px;">
			</div>
			&nbsp;&nbsp;
			<div class="bus2">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" id="lng"
					value="11(김천시청-직지사)" style="width: 150px; height: 30px;">
			</div>
			&nbsp;&nbsp;
			<div class="bus3">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" id="lng"
					value="11(중상-직지사)" style="width: 150px; height: 30px;">
			</div>
			&nbsp;&nbsp;
			<div class="bus4">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" id="lng"
					value="11(지경-직지사)" style="width: 150px; height: 30px;">
			</div>
			&nbsp;&nbsp;
			<div class="bus5">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" id="lng"
					value="11(직지사-김천시외버스터미널)" style="width: 150px; height: 30px;">
			</div>
		</div>


		<div id="bodyBox" calss="bodyBox">
			<!--  -->
			<div id="mapBox" class="mapBox_info"></div>
			<div id="infoBox">
				<table id="routeTable" class="routeTable" border="1"></table>
			</div>
		

		<div id="noLine" class="noLine">

			<div id="busno">
				<strong class="title type_bus1"> <span class="icon">
				</span>노곡11
				</strong>
			</div>
			<div class="scroll_area ng-star-inserted">
				<div class="scroll_inner">
					<div class="scroll_box">
						<ul class="">

							<span>운행지역</span>
							<div class="info_value region">
								<span class="value">김천</span> <span class="value waypoint">
									<span class="txt_waypoint">노곡종점</span> <span
									class="txt_waypoint"> <span class="icon_waypoint">↔</span>직지사
								</span>
								</span>

							</div>
							<!---->
							<span class="info_key">운행시간</span>
							<div class="info_value">
								<ul class="list_schedule">
									<span class="tit_value">첫차</span> 20:47
									</span>
									<span class="value"> <span class="tit_value">막차</span>
										20:47
									</span>

									<!---->
									<!---->
								</ul>
								<!---->
							</div>
							<!---->
							<span class="info_key">배차간격</span>
							<div class="info_value">
								<span class="value ng-star-inserted"> <span
									class="tit_value">매일</span> <!----> 1회<!----> <!---->
								</span>
								<!---->
							</div>
							<!---->
							<!---->
						</ul>


						<!---->
						<div>
							<div class="ng-star-inserted">
								<div class="btn_area">
									<div class="btn_box ng-star-inserted">
										<button type="button" class="btn btn_favorite_transport">
											<span class="btn_text">즐겨찾기</span>
										</button>

										<div class="current_box ng-star-inserted">
											<span class="current_text"> <!----> <!----> 운행 정보 없음 <!---->
												<!----> <!----> <!----> <!----> <!----> <!----> <!----> <span
												class="middot ng-star-inserted">·</span> <span
												class="standard_text ng-star-inserted">오후 03:37 기준</span> <!---->
												<!----> <!----></span>

											<!---->
										</div>
										<!---->
									</div>
									<!---->
								</div>
								<!---->
							</div>
							<div class="route_area">
								<h3 class="blind">직지사 방면</h3>
								<ul class="list_route type_bus1">

									<!---->
									<a href="" class="link_route"><span class="icon_route">회차</span><strong
										class="route_name"><span
											class="icon_start ng-star-inserted">기점</span> <!----> <!---->
											노곡종점 </strong>
										<div _ class="route_box">
											<span class="route_id">15-503</span>
											<!---->
										</div> <!----></a>
									<!---->
									<div>&nbsp;&nbsp;&nbsp;l</div>
									<!---->


									<!---->
									<a href="" class="link_route"><span _class="icon_route">회차</span><strong
										class="route_name"> <!----> <!----> 연명
									</strong>

										<div class="route_box">
											<span class="route_id">15-099</span>
											<!---->
										</div> <!----></a>
									<!---->
									<div>&nbsp;&nbsp;&nbsp;l</div>
									<!---->


									<!---->
									<a href="" class="link_route"><span _ class="icon_route">회차</span><strong
										class="route_name"> <!----> <!----> 입석
									</strong>
										<div class="route_box">
											<span _ class="route_id">15-229</span>
											<!---->
										</div> <!----></a>
									<!---->
									<div>&nbsp;&nbsp;&nbsp;l</div>
									<!---->


									<!---->
									<a href="" class="link_route"><span _ class="icon_route">회차</span><strong
										class="route_name"> <!----> <!----> 봉곡입구
									</strong>
										<div class="route_box">
											<span _ class="route_id">15-589</span>
											<!---->
										</div> <!----></a>
									<!---->
									<div>&nbsp;&nbsp;&nbsp;l</div>
									<!---->


									<!---->
									<a href="" class="link_route"><span class="icon_route">회차</span><strong
										class="route_name"> <!----> <!----> 월곡1리(밤실)
									</strong>
										<div class="route_box">
											<span class="route_id">15-172</span>
											<!---->
										</div> <!----></a>
									<!---->
									<div>&nbsp;&nbsp;&nbsp;l</div>
									<!---->


									<!---->
									<a href="" class="link_route"><span class="icon_route">회차</span><strong
										class="route_name"> <!----> <!----> 용시입구(용수골)
									</strong>
										<div class="route_box">
											<span _ class="route_id">15-144</span>
											<!---->
										</div> <!----></a>
									<!---->
									<div>&nbsp;&nbsp;&nbsp;l</div>
									<!---->


									<!---->
									<a href="" class="link_route"><span class="icon_route">회차</span><strong
										_ class="route_name"> <!----> <!----> 못골
									</strong>
										<div _class="route_box">
											<span _ class="route_id">14-815</span>
											<!---->
										</div> <!----></a>
									<!---->
									<div>&nbsp;&nbsp;&nbsp;l</div>
									<!---->


									<!---->
									<a _ href="" class="link_route"><span class="icon_route">회차</span><strong
										_ class="route_name"> <!----> <!----> 남곡
									</strong>
										<div class="route_box">
											<span _ class="route_id">14-673</span>
											<!---->
										</div> <!----></a>
									<!---->
									<div>&nbsp;&nbsp;&nbsp;l</div>
									<!---->


									<!---->
									<a _ href="" class="link_route selected"><span
										class="icon_route">회차</span><strong _ class="route_name">
											<!----> <!----> 덕곡주공아파트
									</strong>
										<div class="route_box">
											<span class="route_id">14-753</span>
											<!---->
										</div> <!----></a>
									<!---->
									<div>&nbsp;&nbsp;&nbsp;l</div>
									<!---->

									<!---->
									<a href="" class="link_route"><span class="icon_route">회차</span><strong
										_class="route_name"> <!----> <!----> 무실삼거리
									</strong>
										<div class="route_box">
											<span _ class="route_id">14-825</span>
											<!---->
										</div> <!----></a>
									<!---->

									<!---->


								</ul>
							</div>

						</div>

					</div>
				</div>

			</div>
		</div>
</div>


<!-- ======================================================================================= -->
		<script src="<c:url value='resources/js/map.js'/>" charset="utf-8"></script>
		<script type="text/javascript">
			
		</script>
		<script type="text/javascript">
			$("#about_info").addClass("selected");

			fn_clickSetting();
		</script>
</body>
</html>