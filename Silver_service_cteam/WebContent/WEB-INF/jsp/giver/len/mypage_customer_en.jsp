<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>

<link rel="stylesheet" href="resources/css/style_mypage.css">

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
<script
	src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
<script type="text/javascript"
	src="https://www.gstatic.com/charts/loader.js"></script>




<script>
	$(document).ready(function() {
		$('.bxslider').bxSlider({
			auto : true,
			autoControls : true,
			stopAutoOnClick : true,
			pager : true,
			minSlides : 6,
			maxSlides : 2,
			slideWidth : 800,
			slideMargin : 20,
			touchEnabled : (navigator.maxTouchPoints > 0)
		});
		$('#star_grade a').click(function() {
			$(this).parent().children("a").removeClass("on"); /* 별점의 on 클래스 전부 제거 */
			$(this).addClass("on").prevAll("a").addClass("on"); /* 클릭한 별과, 그 앞 까지 별점에 on 클래스 추가 */
			return false;
		});

		$('.service').hover(function() {
			$(this).find("h3").css("color", "#dc8c8c");
		}, function() {
			$(this).find("h3").css("color", "#565656");
		});

		$('.my_giver_resume_detail').click(function() {

			$('.rightPage').attr("src", 'mypage_my_giver_resume_detail_en');

		});

		$('.level_of_satisfaction_customer_en').click(function() {

			$('.rightPage').attr("src", 'level_of_satisfaction_customer_en');

		});

		$('.select_test').click(function() {

			$('.rightPage').attr("src", 'giver_test_list');

		});
		$('.delete_test').click(function() {

			$('.rightPage').attr("src", 'giver_test_delte');

		});

	});
</script>




<!-- MAIN -->



<div id="test" class="slide-item overlay"></div>




<div class="container">
	<div class="row">
		<div id="left_contents" class="3u">
			<section>
				<header class="mypage">
					<img src="resources/images/3.jpg" alt="My Image">
				</header>
			</section>
			<section>
				<header>
					<h3>내 정보관리</h3>
				</header>
				<ul class="default alt">
					<li class=""><a href="#">회원정보 수정</a></li>
					<li class=""><a href="#">고객센터</a></li>
					<li class=""><a href="#">회원탈퇴</a></li>
				</ul>
			</section>
			<section>
				<header>
					<h3>내 도우미 서비스</h3>
				</header>
				<ul class="default alt">
					<li class=""><a href="#">서비스 확인하기</a></li>
					<li class=""><a href="#">서비스 이용내역</a></li>
					<li class="my_giver_resume_detail"><a href="#">내 도우미 정보</a></li>
					<li class=""><a href="#">출퇴근 기록부</a></li>
					<li class="level_of_satisfaction_customer_en"><a href="#">오늘의
							서비스 만족도</a></li>
				</ul>
			</section>
			<section>
				<header>
					<h3>도우미 테스트 중 입니다</h3>
				</header>
				<ul class="default alt">
					<li class="select_test"><a href="#">전체 테이블 select join
							test</a></li>
					<li class="delete_test"><a href="#">delete test</a></li>
				</ul>
			</section>
		</div>

		<div class="9u" id="right_contents">
			<iframe class="rightPage" src="" width="100%" height="100%"
				frameBorder="0"> </iframe>


		</div>
	</div>

</div>
<!-- /Main Content -->

<!-- /Main -->


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
