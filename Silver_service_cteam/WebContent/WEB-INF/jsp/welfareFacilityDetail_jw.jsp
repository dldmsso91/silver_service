<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!doctype html>
<html lang="ko">
<head>
<title>Elderly &mdash; Website Template by Colorlib</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link
	href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;700&family=Playfair+Display:wght@400;700&display=swap"
	rel="stylesheet">

<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Nanum+Myeongjo:wght@700;800&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap"
	rel="stylesheet">
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
<script src="https://code.jquery.com/jquery-3.4.1.js"
	integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
	crossorigin="anonymous">
</script>
<link rel="stylesheet" href="resources/css/welfareFacilityDetail.css">

</head>
<body data-spy="scroll" data-target=".site-navbar-target"
	data-offset="300">
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
		<!-- Header Start -->
		<header class="site-navbar light js-sticky-header site-navbar-target"
			role="banner">

			<div class="container">
				<div class="row align-items-center">

					<div class="col-6 col-xl-2">
						<div class="mb-0 site-logo">
							<a href="index.do" class="mb-0">Elderly<span
								class="text-primary">.</span>
							</a>
						</div>
					</div>
					<div class="col-12 col-md-10 d-none d-xl-block">
						<nav class="site-navigation position-relative text-right"
							role="navigation">
							<ul
								class="site-menu main-menu js-clone-nav mr-auto d-none d-lg-block">
								<li><a href="index.do" class="active nav-link">Home</a></li>
								<li class="has-children"><a href="apply_services_en.do"
									class="nav-link">도우미 서비스</a>
									<ul class="dropdown">
										<li><a href="apply_services_en.do" class="nav-link">서비스
												소개</a></li>
										<li><a href="apply_services_type_en.do" class="nav-link">서비스
												신청하기</a></li>
										<li class="has-children"><a href="#">도우미 지원하기</a>
											<ul class="dropdown">
												<li><a href="guide_nursing_apply_yj.do">생활도우미 지원하기</a></li>
												<li><a href="guide_nursing_apply_yj.do">간병인도우미 지원하기</a></li>
											</ul></li>
									</ul></li>
								<li class="has-children"><a
									href="voice_service_intro_dy.do" class="nav-link">음성인식 서비스</a>
									<ul class="dropdown">
										<li><a href="voice_service_intro_dy.do" class="nav-link">서비스
												소개</a></li>
									</ul></li>
								<li class="has-children"><a href="#" class="nav-link">커뮤니티
										서비스</a>
									<ul class="dropdown">
										<li><a href="communityService.do" class="nav-link">친구위치
												검색</a></li>
										<li class="has-children"><a href="#">커뮤니티 공간 정보</a>
											<ul class="dropdown">
												<li><a href="medicalLocation.do">의료복지시설</a></li>
												<li><a href="silverhallLocation.do">재가노인복지시설</a></li>
												<li><a href="elderlyhomeLocation.do">요양시설</a></li>
											</ul></li>
									</ul></li>
								<li><a href="bus_service.do" class="nav-link">노약자 교통정보</a></li>
								<li><a href="contact.do" class="nav-link">Contact</a></li>
							</ul>
						</nav>
					</div>
					<div class="col-6 d-inline-block d-xl-none ml-md-0 py-3"
						style="position: relative; top: 3px;">
						<a href="#" class="site-menu-toggle js-menu-toggle float-right"><span
							class="icon-menu h3 text-white"></span></a>
					</div>
				</div>
			</div>
		</header>
		<!-- Header End -->
		<!-- MAIN -->

		<div id="test" class="slide-item overlay"></div>

		<div class="layer">
			<div class="layer_inner">
				<h1>시설 상세 정보</h1>
				<table class="ui celled table">
					<tr>
						<td>시설분류</td>
						<td>${facInfo.typeName}</td>
					</tr>
					<tr>
						<td>시설명</td>
						<td>${facInfo.facilityName}</td>
					</tr>
					<tr>
						<td>소재지</td>
						<td>${facInfo.cityloc}</td>
					</tr>
					<tr>
						<td>주소</td>
						<td>${facInfo.address}</td>
					</tr>
					<tr>
						<td>전화번호</td>
						<td>${facInfo.telnumber}</td>
					</tr>
					<tr>
						<td>만족도 점수</td>
						<td>${facInfo.serviceScore}</td>
					</tr>
					<c:choose>
						<c:when test="${facInfo.typeName==\"노인의료복지시설\"}">
							<tr>
								<td>정원</td>
								<td>${facInfo.medicalDetail[0].peopleLimit}</td>
							</tr>
						</c:when>
					</c:choose>
					<c:choose>
						<c:when test="${facInfo.typeName==\"노인의료복지시설\"}">
							<tr>
								<td>현재원</td>
								<td>${facInfo.medicalDetail[0].peopleNumber}</td>
							</tr>
						</c:when>
					</c:choose>
					<c:choose>
						<c:when test="${facInfo.typeName==\"재가노인복지시설\"}">
							<tr>
								<td>제공 서비스</td>
								<td>${facInfo.silverhallDetail[0].serviceType}</td>
							</tr>
						</c:when>
					</c:choose>
				</table>

				<div id="map" class="map" style="width: 55%; height: 400px;"></div>


				<div class="button_div">
					<p>
						<a href="communityReservation?facilityNo=${facilityNo}" class="btn btn-primary">예약</a>
					</p>
					<p>
						<a href="#" class="btn btn-primary" id="delete">길찾기</a>
					</p>
					<!-- 			       	<input name="write" type="submit" value="작성하기"> -->
					<!-- 	               	<input name="cancel"type="reset" value="취소하기"> -->
				</div>
			</div>
		</div>
	</div>


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

	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=8f2c650719bcaf5ef8ed66f3b6f99a2a"></script>
	<script>
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div  
		mapOption = {
			center : new kakao.maps.LatLng(${facInfo.latitude}, ${facInfo.longitude}), // 지도의 중심좌표
			level : 5
		// 지도의 확대 레벨
		};

		var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

		// 마커를 표시할 위치와 내용을 가지고 있는 객체 배열입니다 
		var positions = [ {
			content : '<div>${facInfo.facilityName}</div>',
			latlng : new kakao.maps.LatLng(${facInfo.latitude}, ${facInfo.longitude})
		} ];

		for (var i = 0; i < positions.length; i++) {
			// 마커를 생성합니다
			var marker = new kakao.maps.Marker({
				map : map, // 마커를 표시할 지도
				position : positions[i].latlng
			// 마커의 위치
			});

			// 마커에 표시할 인포윈도우를 생성합니다 
			var infowindow = new kakao.maps.InfoWindow({
				content : positions[i].content
			// 인포윈도우에 표시할 내용
			});

			// 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
			// 이벤트 리스너로는 클로저를 만들어 등록합니다 
			// for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
			kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(
					map, marker, infowindow));
			kakao.maps.event.addListener(marker, 'mouseout',
					makeOutListener(infowindow));
		}

		// 인포윈도우를 표시하는 클로저를 만드는 함수입니다 
		function makeOverListener(map, marker, infowindow) {
			return function() {
				infowindow.open(map, marker);
			};
		}

		// 인포윈도우를 닫는 클로저를 만드는 함수입니다 
		function makeOutListener(infowindow) {
			return function() {
				infowindow.close();
			};
		}
	</script>

</body>

</html>