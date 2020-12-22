<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>

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
	});
</script>

<style>
.col-lg-3 {
	-webkit-box-flex: 0;
	-ms-flex: 0 0 25%;
	flex: 0 0 21%;
	max-width: 30%;
	padding: 2%;
}

.service .service-inner p {
	font-size: 19px;
	color: #848484;
}

.service .service-inner h3 {
	font-size: 30px;
	color: #565656;
}

.service .service-inner {
	border: 0px solid rgba(0, 0, 0, 0.05);
	border-top: none;
	padding: 10px;
	text-align: center;
}

.container_text_box {
	width: 60%;
	margin: 0 auto;
	text-align: center;
	margin-bottom: 5%;
}
</style>

<!-- MAIN -->



<div id="test" class="slide-item overlay"></div>




<div class="site-section">
	<div class="container">
		<h1 style="margin-bottom: 50px; text-align: center;">당신만을 위한
			Private service!</h1>
		<p class="container_text_box">Elderly는 오랫동안 축적된 경험과 노하우를 바탕으로 항상
			고객님께 양질의 서비스를 제공하도록 최선을 다하는 도우미서비스입니다. 저희 Elderly는 믿음과 신뢰를 지키는 회사로써,
			만일의 손실에 대비하여 집안의 귀한 자녀와 재산을 믿고 맡기실 수 있도록 신원이 확실한 사람만을 소개 알선합니다. 언제나
			고객 여러분께서 후회없는 선택이 되도록 항상 고객의 작은소리에도 귀 기울이며 더욱 더 노력하겠습니다.</p>
		<div class="row">
			<div class="col-6 col-sm-6 col-md-6 mb-4 mb-lg-0 col-lg-3">
				<div class="service">
					<a href="caregiver_service_main_en" class="d-block"><img
						src="resources/images/img_3_sq.jpg" alt="Image" class="img-fluid"></a>
					<div class="service-inner">
						<h3>간병 도우미</h3>
						<p>전문 간병인이 필요하신가요?</p>
					</div>
				</div>
			</div>
			<div class="col-6 col-sm-6 col-md-6 mb-4 mb-lg-0 col-lg-3">
				<div class="service">
					<a href="walking_service_main_en" class="d-block"><img
						src="resources/images/img_1_sq.jpg" alt="Image" class="img-fluid"></a>
					<div class="service-inner">
						<h3>외출 도우미</h3>
						<p>언제 어디서든 함께!</p>
					</div>
				</div>
			</div>
			<div class="col-6 col-sm-6 col-md-6 mb-4 mb-lg-0 col-lg-3">
				<div class="service">
					<a href="life_service_main_en" class="d-block"><img
						src="resources/images/img_2_sq.jpg" alt="Image" class="img-fluid"></a>
					<div class="service-inner">
						<h3>생활 도우미</h3>
						<p>생활의 품질을 높이고 싶으신가요?</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>


<div class="site-section bg-primary">
	<div class="container">
		<div class="row">
			<h1 style="color: white;">지금 최고의 도우미들을 확인해보세요!</h1>
			<form>
				<div class='bxslider_area'>
					<ul class="bxslider">
						<li><img src="resources/images/1.jpg" alt="Image"
							class="img-fluid" />
							<h3>이문자</h3>
							<h5>도우미에 대한 평가</h5>
							<p id="star_grade">
								<a href="#">★</a> <a href="#">★</a> <a href="#">★</a> <a
									href="#">★</a> <a href="#">★</a>
							</p> <a href="giver_resume_detail" class="btn btn-primary">상세보기</a></li>
						<li><img src="resources/images/2.jpg" / alt="Image"
							class="img-fluid">
							<h3>이요롱</h3>
							<h5>도우미에 대한 평가</h5>
							<p id="star_grade">
								<a href="#">★</a> <a href="#">★</a> <a href="#">★</a> <a
									href="#">★</a> <a href="#">★</a>
							</p> <a href="giver_resume_detail" class="btn btn-primary">상세보기</a></li>
						<li><img src="resources/images/1.jpg" / alt="Image"
							class="img-fluid">
							<h3>김애용</h3>
							<h5>도우미에 대한 평가</h5>
							<p id="star_grade">
								<a href="#">★</a> <a href="#">★</a> <a href="#">★</a> <a
									href="#">★</a> <a href="#">★</a>
							</p> <a href="giver_resume_detail" class="btn btn-primary">상세보기</a></li>
						<li><img src="resources/images/1.jpg" alt="Image"
							class="img-fluid" />
							<h3>이문자</h3>
							<h5>도우미에 대한 평가</h5>
							<p id="star_grade">
								<a href="#">★</a> <a href="#">★</a> <a href="#">★</a> <a
									href="#">★</a> <a href="#">★</a>
							</p> <a href="giver_resume_detail" class="btn btn-primary">상세보기</a></li>
						<li><img src="resources/images/2.jpg" alt="Image"
							class="img-fluid" />
							<h3>이요롱</h3>
							<h5>도우미에 대한 평가</h5>
							<p id="star_grade">
								<a href="#">★</a> <a href="#">★</a> <a href="#">★</a> <a
									href="#">★</a> <a href="#">★</a>
							</p> <a href="giver_resume_detail" class="btn btn-primary">상세보기</a></li>
						<li><img src="resources/images/1.jpg" alt="Image"
							class="img-fluid" />
							<h3>김애용</h3>
							<h5>도우미에 대한 평가</h5>
							<p id="star_grade">
								<a href="#">★</a> <a href="#">★</a> <a href="#">★</a> <a
									href="#">★</a> <a href="#">★</a>
							</p> <a href="giver_resume_detail" class="btn btn-primary">상세보기</a></li>
						<li><img src="resources/images/1.jpg" alt="Image"
							class="img-fluid" />
							<h3>이문자</h3>
							<h5>도우미에 대한 평가</h5>
							<p id="star_grade">
								<a href="#">★</a> <a href="#">★</a> <a href="#">★</a> <a
									href="#">★</a> <a href="#">★</a>
							</p> <a href="giver_resume_detail" class="btn btn-primary">상세보기</a></li>
						<li><img src="resources/images/2.jpg" alt="Image"
							class="img-fluid" />
							<h3>이요롱</h3>
							<h5>도우미에 대한 평가</h5>
							<p id="star_grade">
								<a href="#">★</a> <a href="#">★</a> <a href="#">★</a> <a
									href="#">★</a> <a href="#">★</a>
							</p> <a href="giver_resume_detail" class="btn btn-primary">상세보기</a></li>
						<li><img src="resources/images/1.jpg" alt="Image"
							class="img-fluid" />
							<h3>김애용</h3>
							<h5>도우미에 대한 평가</h5>
							<p id="star_grade">
								<a href="#">★</a> <a href="#">★</a> <a href="#">★</a> <a
									href="#">★</a> <a href="#">★</a>
							</p> <a href="giver_resume_detail" class="btn btn-primary">상세보기</a></li>
						<li><img src="resources/images/1.jpg" alt="Image"
							class="img-fluid" />
							<h3>이문자</h3>
							<h5>도우미에 대한 평가</h5>
							<p id="star_grade">
								<a href="#">★</a> <a href="#">★</a> <a href="#">★</a> <a
									href="#">★</a> <a href="#">★</a>
							</p> <a href="giver_resume_detail" class="btn btn-primary">상세보기</a></li>
						<li><img src="resources/images/2.jpg" alt="Image"
							class="img-fluid" />
							<h3>이요롱</h3>
							<h5>도우미에 대한 평가</h5>
							<p id="star_grade">
								<a href="#">★</a> <a href="#">★</a> <a href="#">★</a> <a
									href="#">★</a> <a href="#">★</a>
							</p> <a href="giver_resume_detail" class="btn btn-primary">상세보기</a></li>
						<li><img src="resources/images/1.jpg" alt="Image"
							class="img-fluid" />
							<h3>김애용</h3>
							<h5>도우미에 대한 평가</h5>
							<p id="star_grade">
								<a href="#">★</a> <a href="#">★</a> <a href="#">★</a> <a
									href="#">★</a> <a href="#">★</a>
							</p> <a href="giver_resume_detail" class="btn btn-primary">상세보기</a>
					</ul>
				</div>
			</form>
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