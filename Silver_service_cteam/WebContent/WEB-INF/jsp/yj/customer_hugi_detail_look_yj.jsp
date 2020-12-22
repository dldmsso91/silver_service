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

img {
	vertical-align: middle;
	border-style: none;
	width: 300px;
	height: 150px;
}
</style>


<!-- MAIN -->
<!--  여기에 추가 될 이미지는 해당 리스트에서 끌고온 이미지 -->
<div class="slide-item overlay"
	style="background-image: url('images/slider-1.jpg')">
	<div class="container">
		<div class="row">
			<div class="col-lg-6 align-self-center"></div>
		</div>
	</div>
</div>
<div class="site-section bg-light">
	<div class="container">
		<div class="row">
			<div class="col-12 col-sm-6 col-md-6 col-lg-4 mb-5 mb-lg-0">
				<div class="testimonial text-center">
					<img src="resources/images/img_4_sq.jpg"
						style="width: 350px; height: 350px;">
					<table style="width: 300px;">
						<tr>
							<th>작성자</th>
							<td>김길동</td>
						</tr>
						<tr>
							<th>이용후기</th>
							<td><pre></pre></td>
						</tr>
						<tr>
							<th>별점</th>
							<td>별점</td>
						</tr>
						<tr>
							<tH>이용날짜</th>
							<td>이용날짜</td>
						</tr>
					</table>
					<div></div>
				</div>
			</div>
		</div>
		<div class="site-section">
			<div class="container">
				<div class="row mb-5 justify-content-center"
					style="margin-left: 0px; margin-right: 500px;">
					<div class="col-7 text-center">
						<div class="heading">
							<table id="products" border="1"
								style="width: 802.5px; height: 502.5px; margin-left: 150px;">
								<thead>
									<tr>
										<th style="width: 100px;">글번호</th>
										<th style="width: 150px;">작성자</th>
										<th style="width: 300px;">이미지</th>
										<th style="width: 150px;">별점</th>
										<th style="width: 150px;">날짜</th>
									</tr>
								</thead>
								<tbody>
									<!--  반복문으로 사용 -->
									<tr>
										<td>1</td>
										<td><a href="customer_hugi_detail_look_yj">작성자</a></td>
										<td><img src="resources/images/svg/svg/001-elderly.svg"
											alt="Image" class="img-fluid"></td>
										<td>별점</td>
										<td>날짜</td>
									</tr>
									<tr>
										<td>2</td>
										<td><a href="customer_hugi_detail_look_yj">작성자</a></td>
										<td><img src="resources/images/svg/svg/001-elderly.svg"
											alt="Image" class="img-fluid"></td>
										<td>별점</td>
										<td>날짜</td>
									</tr>
									<tr>
										<td>3</td>
										<td><a href="customer_hugi_detail_look_yj">작성자</a></td>
										<td><img src="resources/images/svg/svg/001-elderly.svg"
											alt="Image" class="img-fluid"></td>
										<td>별점</td>
										<td>날짜</td>
									</tr>
									<tr>
										<td>4</td>
										<td><a href="customer_hugi_detail_look_yj">작성자</a></td>
										<td><img src="resources/images/svg/svg/001-elderly.svg"
											alt="Image" class="img-fluid"></td>
										<td>별점</td>
										<td>날짜</td>
									</tr>
									<tr>
										<td>5</td>
										<td><a href="customer_hugi_detail_look_yj">작성자</a></td>
										<td><img src="resources/images/svg/svg/001-elderly.svg"
											alt="Image" class="img-fluid"></td>
										<td>별점</td>
										<td>날짜</td>
									</tr>
									<tr>
										<td>6</td>
										<td><a href="customer_hugi_detail_look_yj">작성자</a></td>
										<td><img src="resources/images/svg/svg/001-elderly.svg"
											alt="Image" class="img-fluid"></td>
										<td>별점</td>
										<td>날짜</td>
									</tr>
									<tr>
										<td>7</td>
										<td><a href="customer_hugi_detail_look_yj">작성자</a></td>
										<td><img src="resources/images/svg/svg/001-elderly.svg"
											alt="Image" class="img-fluid"></td>
										<td>별점</td>
										<td>날짜</td>
									</tr>
									<tr>
										<td>8</td>
										<td><a href="customer_hugi_detail_look_yj">작성자</a></td>
										<td><img src="resources/images/svg/svg/001-elderly.svg"
											alt="Image" class="img-fluid"></td>
										<td>별점</td>
										<td>날짜</td>
									</tr>
									<tr>
										<td>9</td>
										<td><a href="customer_hugi_detail_look_yj">작성자</a></td>
										<td><img src="resources/images/svg/svg/001-elderly.svg"
											alt="Image" class="img-fluid"></td>
										<td>별점</td>
										<td>날짜</td>
									</tr>
									<tr>
										<td>10</td>
										<td><a href="customer_hugi_detail_look_yj">작성자</a></td>
										<td><img src="resources/images/svg/svg/001-elderly.svg"
											alt="Image" class="img-fluid"></td>
										<td>별점</td>
										<td>날짜</td>
									</tr>
								</tbody>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<form action="" id="setRows">
	<p>
		<input type="hidden" name="rowPerPage" value="3">
	</p>
</form>




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