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
	});
</script>


<style>
.apply_button {
	text-align: center;
	margin-top: 60px;
}

#apply_button {
	margin-left: 10px;
	margin-right: 10px;
	font-size: 15px;
	padding: 2vh;
	border-radius: 3px;
	background: #5fb56e;
	border: 0px;
}
</style>
<!-- MAIN -->



<div id="test" class="slide-item overlay"></div>




<div class="site-section">
	<div class="container">
		<div class="row">
			<div class="col-6 col-sm-6 col-md-6 mb-4 mb-lg-0 col-lg-3">
				<div class="service">
					<img src="resources/images/img_3_sq.jpg" alt="Image"
						class="img-fluid">
				</div>
			</div>
			<div class="service-text">
				<h3>간병 도우미</h3>
				<p>
					간병인 선생님을 찾으시나요?<br>환자분과 간병인 선생님의 신뢰할 수 있는 좋은간병을 약속 드립니다.
				</p>
				<hr>
				<img src="resources/images/caregiver_explan.JPG" alt="Image"
					class="img-fluid">
			</div>
		</div>
		<div class="apply_button">
			<p><%-- 추후에는 컨트롤러로 부터 로그인한 세션정보를 불러와서 넘기거나 로그인을 하지 않았다면, 즉 세션이 없다면 로그인 폼 갔다가 와야함. --%>
				<a href="customer_service_apply_yj" class="btn btn-primary"
					id="apply_button">서비스 신청하기</a> <a href="guide_nursing_apply_yj"
					class="btn btn-primary" id="apply_button">간병인 지원하기</a>
			</p>
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