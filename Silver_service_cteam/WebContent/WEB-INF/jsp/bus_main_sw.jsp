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
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="<c:url value='/resources/js/common.js'/>" charset="utf-8"></script>
<!-- kakao Map API -->
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
				href="<c:url value='/bus_main'/>"> <img
					src="resources/images/node_icon.png" alt="" class="gnb_icon">
					정류장 찾기
			</a></li>

			<li class="gnb_menu" id="route_info"><a class=""
				href="<c:url value='/bus_info'/>"> <img
					src="resources/images/bus_icon.png" alt="" class="gnb_icon">
					버스 노선
			</a></li>

			<li class="gnb_menu" id="route_info"><a class=""
				href="<c:url value='/index'/>"> <img
					src="resources/images/home.png" alt="" class="gnb_icon"> 매인화면
			</a></li>


		</ul>
	</div>



	<!-- 마우스 클릭을 해서 주변 검색-->

	<div id="body">
		<div id="searchMenu" class="leftBox">
			<div id="searchBox" class="leftBox">
				<p class="margin0">
					<input type="hidden" id="lat" value="37.49992"
						style="width: 150px; height: 20px;">
				</p>
				<p class="margin0">
					<input type="hidden" id="lng" value="126.77501"
						style="width: 150px; height: 20px;">
				</p>
				<!-- <p class="margin0">
					검색 <input type="text" id="search" value=""
						style="width: 150px; height: 20px;">
				</p> -->
				<input type="hidden" value="${nodeid }" id="nodeidVal"> <input
					type="hidden" value="${nodename }" id="nodenameVal"> <input
					type="hidden" value="${lat }" id="latVal"> <input
					type="hidden" value="${lng }" id="lngVal"> 
					
					<div>&nbsp;&nbsp;&nbsp;</div>
					<a href="#this"id="sc_btn" class="btn">위치 찾기</a>
			</div>
		</div>
		<div id="resultBox" class="leftBox"></div>

		<div id="bodyBox">
			<div id="mapBox" class="mapBox"></div>
		</div>
	</div>
	<%-- <script src="<c:url value='/resources/js/map.js' />" charset="utf-8"></script> --%>
	<script src="resources/js/map.js" charset="utf-8"></script>


	<script type="text/javascript">
		$("#node_find").addClass("selected");
		fn_clickSetting();
		//---------------------

		$(document).ready(function() {

			$("#sc_btn").on("click", function(e) {
				e.preventDefault();
				fn_clickSearchButton();
			})
			$("a[name^='node']").on("click", function(e) {
				e.preventDefault();
				fn_clickNode($(this));
			})
		})

		//---------------------
		//버튼을 클릭 하였을 시 경도, 위도에 적혀 있는 주변의 정류소를 찾기 위한 함수
		function fn_clickSearchButton() {

			//정류소 마커 부분들과 정류장 검색 결과들을 초기화
			setMarkers(null);
			$("#resultBox").children().remove();

			//경도 위도를 ajax를 통해 보낼 데이터에 추가 / 객체는 중괄호 ,배열은 대괄호
			var data = {};
			data["LAT"] = $("#lat").val();
			data["LNG"] = $("#lng").val();

			//지도 중심을 변경합니다.
			map.setCenter(new kakao.maps.LatLng(data["LAT"], data["LNG"]));
			$.ajax({
						url : 'nodeList',
						dataType : 'json',
						type : 'POST',
						contentType : 'application/json; charset=UTF-8',
						data : JSON.stringify(data), //JSON으로 변형 후 보냄
						success : function(result) {

							//데이터를 받아오기가 성공하였을 경우 받아온 데이터 중 list에 저장되어 있는 정류소 정보를 결과박스에 추가해주고 정류소 정보를 통해 지도 위에 마커를 생성해준다

							for (var i = 0; i < result["list"].length; i++) {

								var map = result["list"][i];

								var str = "<a href='#this' nodeid='"+map["NODEID"]+"'   lat='"+map["LAT"]+"'    lng='"+map["LNG"]+"'    name='node"+i+"'   id='node"+i+"' class='result sc_node_result'  nodename='"+map["NODENAME"] +"'>" +map["NODENAME"] + "</a>";

								$("#resultBox").append(str);

								//kakao API marker 생성 함수()
								fn_nodeMarkerMaker($("a[name='node" + i + "']"));

							}

							$("a[name^='node']").on("click", function(e) {
								e.preventDefault();
								fn_clickNode($(this));
							})
						},

						//데이터를 받아오는게 실패시 나오는 메세지   
						error : function() {
							alert("DB에 데이터가 없습니다.");
						}
					});

		}

		//실시간 버스정보
		function fn_clickNode(obj) {
			setMarkers(null);

			if ($("a[name^='node']").hasClass("selected")) {
				$("a[name^='node']").removeClass("selected");
				fn_clickSearchButton();

			} else {
				$("a[name^='node']").addClass("selected");

				fn_nodeRealTime(obj);
			}
		}

		function fn_nodeRealTime(obj) {
			//버스 노선 페이지에서 검색된 경로의 정류장의 정보보기의 기능 활성화의 경우를 위한 변수들 초기화
			if ($("#nodeidVal").val() != null
					&& !($("#nodeidVal").hasClass("used"))) {
				var str = "<a href='#this' nodeid='"+ $("#nodeidVal").val()+ "' lat='"+ $("#latVal").val()+ "' lng='"+ $("#lngVal").val()+ "' name='node1' id='node1' class='result sc_node_result'>"+ $("#nodenameVal").val() + "</a>";
				$("#resultBox").append(str);
				obj = $("#node1");
				$(obj).addClass("selected");
				$("#nodeidVal").addClass("used");
			}
			//지도 중심을 변경.
			map.setCenter(new kakao.maps.LatLng(obj.attr("lat"), obj.attr("lng")));
			//선택한 정류장의 오버레이를 활성화.
			var divStr = "<div id='routeBox' class='result'><div id='pageDiv'></div></div>";
			obj.siblings().remove();
			obj.parent().append(divStr);
			//선택한 정류장의 위치에 마커를 표시
			fn_nodeMarkerMaker(obj);
			
			$.ajax({
						dataType : "json",
						type : "POST",
						contentType : "application/json",
						url : "nodeRealTime",
						data : JSON.stringify({
							NODEID : obj.attr("nodeid")
						}),
						success : function(result) {
							for (var i = 0; i < result["list"].length; i++) {
								var map = result["list"][i];
								var arrtime = Math.floor(map["ARRTIME"] / 60);
								var str = "<a href='#this' routeno='"+map["ROUTENO"]+"' routeid='"+map["ROUTEID"]+"' name='route"+i+"' id='route"+i+"' class='result sc_real_route_result'>"+ map["ROUTENO"]+ "("+ map["VEHICLETP"]+ ")<p>"+ map["ARRPREV"]+ "정류장 전("+ arrtime+ "분)</p></a>";
								$("#routeBox").append(str);
							}
							$("#routeBox").css("height",52 * result["list"].length);
							$("#routeBox").append("<a href='#this' id='busList_Btn' class='btn' >모든 버스 노선 보기</a>");
							$("a[name^=route]").on("click", function(e) {
								e.preventDefault();
							});
							$("#busList_Btn").on("click", function(e) {
								e.preventDefault();
							});
						},
						error : function() {
							alert("불러오기 실패");
						}
					})

		}
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