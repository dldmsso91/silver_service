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
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
<script
	src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
<script type="text/javascript"
	src="https://www.gstatic.com/charts/loader.js"></script>

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
							<a href="index" class="mb-0">Elderly<span
								class="text-primary">.</span>
							</a>
						</div>
					</div>

					<div class="col-12 col-md-10 d-none d-xl-block">
						<nav class="site-navigation position-relative text-right"
							role="navigation">

							<ul
								class="site-menu main-menu js-clone-nav mr-auto d-none d-lg-block">
								<li><a href="index" class="active nav-link">Home</a></li>
								<li class="has-children"><a href="apply_services_en"
									class="nav-link">도우미 서비스</a>
									<ul class="dropdown">
										<li><a href="apply_services_en" class="nav-link">서비스
												소개</a></li>
										<li><a href="apply_services_type_en" class="nav-link">서비스
												신청하기</a></li>
										<li class="has-children"><a href="#">도우미 지원하기</a>
											<ul class="dropdown">
												<li><a href="guide_Life_apply_yj">생활도우미 지원하기</a></li>
												<li><a href="guide_walk_apply_yj">외출도우미 지원하기</a></li>
												<li><a href="guide_nursing_apply_yj">간병인도우미 지원하기</a></li>
											</ul></li>
									</ul></li>
								<li class="has-children"><a href="voice_service_intro_dy"
									class="nav-link">음성인식 서비스</a>
									<ul class="dropdown">
										<li><a href="voice_service_intro_dy" class="nav-link">서비스
												소개</a></li>
									</ul></li>

								<li class="has-children"><a href="#" class="nav-link">커뮤니티
										서비스</a>
									<ul class="dropdown">
										<li><a href="communityService" class="nav-link">친구위치
												검색</a></li>
										<li class="has-children"><a href="#">커뮤니티 공간 정보</a>
											<ul class="dropdown">
												<li><a href="medicalLocation">의료복지시설</a></li>
												<li><a href="silverhallLocation">재가노인복지시설</a></li>
												<li><a href="elderlyhomeLocation">요양시설</a></li>
											</ul></li>
									</ul></li>
								<li><a href="bus_service" class="nav-link">노약자 교통정보</a></li>
								<li><a href="contact" class="nav-link">Contact</a></li>

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



		<!-- MAIN -->


		<div id="test" class="slide-item overlay"></div>

		<form action="POST" class='wirtehugi'>
			<div class="layer">

				<div class="layer_inner">
					<h1>시설 예약하기</h1>
					<table class="ui celled table" style="width: 1000px; margin: auto;">
						<tr>
							<td rowspan="5">시설정보</td>
						</tr>
						<tr>
							<td>시설분류</td>
							<td>${WelfareFacilities.typeName}</td>
						</tr>
						<tr>
							<td>시설명</td>
							<td>${WelfareFacilities.facilityName}</td>
						</tr>
						<tr>
							<td>주소</td>
							<td>${WelfareFacilities.address}</td>
						</tr>
						<tr>
							<td>전화번호</td>
							<td>${WelfareFacilities.telnumber}</td>
						</tr>
						<tr>
							<td rowspan="7">회원정보</td>
						</tr>
						<tr>
							<td>이름</td>
							<td>${Reservationmember.mName}</td>
						</tr>
						<tr>
							<td>생년월일</td>
							<td>${Reservationmember.mBirth}</td>
						</tr>
						<tr>
							<td>나이</td>
							<td></td>
						</tr>
						<tr>
							<td>성별</td>
							<td>${Reservationmember.mGender}</td>
						</tr>
						<tr>
							<td>주소</td>
							<td>${Reservationmember.mAddr}</td>
						</tr>
						<tr>
							<td>전화번호</td>
							<td>${Reservationmember.mPhone}</td>
						</tr>
						<tr>
							<td rowspan="2">예약 정보</td>
						</tr>
						<tr>
							<td>희망 날짜</td>
							<td><input type='date' name='startday' />&nbsp; 부터 &nbsp; <input
								type='date' name='endday' /> 까지</td>
						</tr>
					</table>
					<div class="button_div">
						<input name="write" type="submit" class="btn btn-primary" value="예약">
						<input name="cancel"type="reset" class="btn btn-primary" value="길찾기">
					</div>
				</div>
			</div>
		</form>

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
	<script src="resources/js/star.js"></script>
	<Script></Script>

</body>
</html>