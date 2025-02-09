<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<style>
.contents {
	background: gray;
}

h3 {
	text-align: center;
	margin-top: 100px;
	margin-bottom: 35px;
}

.site-section {
	padding: 20px 0;
}

.question_box {
	margin: 0 auto;
	width: 30%;
	text-align: center;
}

.bed_select select {
	margin-top: 15px;
}

.contents_box {
	background: white;
	width: 80%;
	margin: 0 auto;
	height: 100vh;
}

.button {
	margin-top: 25px;
	background: #3c90f7;
	border: none;
	width: 43%;
	height: 4vh;
	border-radius: 5px;
	font-size: 20px;
}

.service .service-inner {
	border: 0px;
}
</style>
<script src="https://code.jquery.com/jquery-3.4.1.js"
	integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
	crossorigin="anonymous">
	
</script>

<script type="text/javascript">
	$(function() {

		var bed = $('#bed_img');
		var notbed = $('#notbed_img');
		var happy = $('#happy_img');

		var bed_contents = $('.bed_select');
		var notbed_contents = $('.notbed_select');
		var happy_contents = $('.happy_select');
		var question_box_text = $('.question_box_text');

		bed_contents.hide();
		notbed_contents.hide();
		happy_contents.hide();

		bed.click(function() {
			question_box_text.hide();
			bed_contents.slideDown();
			notbed_contents.hide();
			happy_contents.hide();

		});

		notbed.click(function() {
			question_box_text.hide();
			notbed_contents.slideDown();
			bed_contents.hide();
			happy_contents.hide();
		});
		happy.click(function() {
			question_box_text.hide();
			happy_contents.slideDown();
			bed_contents.hide();
			notbed_contents.hide();
		});

	})
</script>


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
										<li><a href="apply_caregiver_detail_en.do"
											class="nav-link">도우미 지원하기</a></li>
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


		<!-- MAIN -->

		<div class="contents">
			<div class="contents_box">

				<div id="test" class="slide-item overlay"></div>



				<h3>오늘 업무는 어떠셨나요?</h3>

		<form action="saveSatisfaction" method='post' enctype="multipart/form-data">	
		    <div class="site-section">
		      <div class="container">
		        <div class="row">
		          <div class="col-6 col-sm-6 col-md-6 mb-4 mb-lg-0 col-lg-3">
		            <div class="service">
		              <img src="resources/images/sad_face.png" alt="Image" class="img-fluid" id="bed_img" style="border-radius: 100px;" >
		              <div class="service-inner">
		              </div>
		            </div>
		          </div>
		          <div class="col-6 col-sm-6 col-md-6 mb-4 mb-lg-0 col-lg-3">
		            <div class="service">
		              <img src="resources/images/straight face.png" alt="Image" class="img-fluid" id="notbed_img" style="border-radius: 100px;">
		              <div class="service-inner">
		              </div>
		            </div>
		          </div>
		          <div class="col-6 col-sm-6 col-md-6 mb-4 mb-lg-0 col-lg-3">
		            <div class="service">
		              <img src="resources/images/happy_face.png" alt="Image" class="img-fluid" id="happy_img" style="border-radius: 100px;">
		              <div class="service-inner">
		              </div>
		            </div>
		          </div>
		        </div>
		      </div>
		    </div>
		 <div class="question_box">
		    <h3 class="question_box_text">고객님의 소중한 선택으로 더 행복한 서비스를 만들어갑니다.</h3>
		 	<div class="bed_select">
		 		<h4>아쉬웠던 부분을 알려주세요</h4>
		 		<input class="score" name="customer_satisfaction_score" type="hidden" value="1" /> 		
		 		<select id="test" name="customer_satisfaction_complain" style="width: 100%; height: 5vh; font-size: 20px;">
		 			<option value=""></option>
		 			<option value="불친절 했습니다.">불친절 했습니다.</option>
		 			<option value="욕설을 하였습니다.">욕설을 하였습니다.</option>
		 			<option value="폭력이 있었습니다.">폭력이 있었습니다.</option>
		 			<option value="기타">기타</option>
		 		</select>
				<input type="submit"  class="button"  value="등록하기">
		 	</div>
		 	<div class="notbed_select">
		 		<h4>소중한 의견 감사합니다</h4> 	
				<input type="submit"  class="button"  value="등록하기">
		 	</div>
		 	<div class="happy_select">
		 		<h4>행복한 하루 되세요</h4> 	
				<input type="submit"  class="button"  value="등록하기">
		 	</div>
		 </div>
		</form>

		<div class="site-footer bg-light">
			<div class="container">
				<div class="row">
					<div class="col-lg-4">
						<h2 class="footer-heading mb-4">About</h2>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
							Modi cumque tenetur inventore veniam, hic vel ipsa necessitatibus
							ducimus architecto fugiat!</p>
						<div class="my-5 social">
							<a href="#" class="pl-0 pr-3"><span class="icon-facebook"></span></a>
							<a href="#" class="pl-3 pr-3"><span class="icon-twitter"></span></a>
							<a href="#" class="pl-3 pr-3"><span class="icon-instagram"></span></a>
							<a href="#" class="pl-3 pr-3"><span class="icon-linkedin"></span></a>
						</div>
					</div>
					<div class="col-lg-8">
						<div class="row">
							<div class="col-lg-4">
								<h2 class="footer-heading mb-4">Quick Links</h2>
								<ul class="list-unstyled">
									<li><a href="#">Amazing Atmosphere</a></li>
									<li><a href="#">Caring Staff</a></li>
									<li><a href="#">FAQs</a></li>
									<li><a href="#">About Us</a></li>
									<li><a href="#">Contact Us</a></li>
								</ul>
							</div>
							<div class="col-lg-4">
								<h2 class="footer-heading mb-4">Helpful Link</h2>
								<ul class="list-unstyled">
									<li><a href="#">Hospice Care</a></li>
									<li><a href="#">Excellent Cuisine</a></li>
									<li><a href="#">Privacy</a></li>
									<li><a href="#">Terms</a></li>
								</ul>
							</div>
							<div class="col-lg-4">
								<h2 class="footer-heading mb-4">Resources</h2>
								<ul class="list-unstyled">
									<li><a href="#">Health Care</a></li>
									<li><a href="#">Elderly Care</a></li>
									<li><a href="#">Care with Love</a></li>
									<li><a href="#">Quality Care</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<div class="row text-center">
					<div class="col-md-12">
						<div class="border-top pt-5">
							<p class="copyright">
								<small> <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
									Copyright &copy;<script>
										document
												.write(new Date().getFullYear());
									</script>
									All rights reserved | This template is made with <i
									class="icon-heart text-danger" aria-hidden="true"></i> by <a
									href="https://colorlib.com" target="_blank">Colorlib</a> <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></small>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
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