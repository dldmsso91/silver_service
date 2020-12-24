<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>    
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
			minSlides : 4,
			maxSlides : 2,
			slideWidth : 700,
			slideMargin : 20,
			touchEnabled : (navigator.maxTouchPoints > 0)
		});
	});
</script>

<style>
h2 {
	text-align: center;
	margin: 0 auto;
	margin-top: 74px;
	margin-bottom: 20px;
	width: 29%;
	padding: 2vh;
	border-bottom-style: double;
	font-size: 30px;
	font-weight: 900;
}

h5 {
	margin-top: 30px;
}

h3 {
	margin-top: 30px;
}

.bxslider_area {
	margin: 0 auto;
	margin-bottom: 150px;
	width: 1700px;
}

.bx-wrapper {
	margin: 0px auto;
	text-align: center;
}

.bx-wrapper li {
	border: 1px solid #cacaca;
	padding: 10px;
	border-radius: 20px;
	box-shadow: 5px 5px 5px #e8e8e8;
}

.bx-wrapper li a {
	margin-top: 30px;
}

.bx-wrapper li p {
	margin-top: 0;
	margin-bottom: 1rem;
	width: 65%;
	margin: 0 auto;
}

.care-list {
	display: flex;
	font-size: 90%;
	margin: 0 auto;
	width: 60%;
}

.care-list .item {
	background: #ededed;
	margin: .3em;
	padding: .5em;
	border-radius: .5em;
	text-align: center;
	width: 3.6em;
	font-size: 85%;
}

.title {
	color: #000;
	line-height: 1.8em;
	font-size: 85%;
}

.care-list .line-color {
	width: 100%;
	border-radius: 1em;
	height: .3em;
	margin: 0 0 .3em 0;
}

.care-list .line-color.re {
	background: #ff4b57;
}

.care-list .line-color.am {
	background: #ff763a;
}

.care-list .line-color.ch {
	background: #ffb300;
}

.care-list .line-color.su {
	background: #96d84b;
}

.care-list .count {
	color: #000;
	font-weight: bold;
}


.stars-container {
  position: relative;
  display: inline-block;
  color: transparent;
}

.stars-container:before {
  position: absolute;
  top: 0;
  left: 0;
  content: '★★★★★';
  color: lightgray;
}

.stars-container:after {
  position: absolute;
  top: 0;
  left: 0;
  content: '★★★★★';
  color: gold;
  overflow: hidden;
}

.stars-0:after { width: 0%; }
.stars-1:after { width: 20%; }
.stars-2:after { width: 40%; }
.stars-3:after { width: 60%; }
.stars-4:after { width: 80%; }
.stars-5:after { width: 100; }

.bx-wrapper {
	-webkit-box-shadow: 0 0 5px #ccc0;
	box-shadow: 0 0 5px #ccc0;
	border: 5px solid #fff;
	background: #fff;
}

.bx-wrapper img {
	max-width: 75%;
	display: block;
	margin: 0 auto;
}
</style>

<!-- MAIN -->



<div id="test" class="slide-item overlay"></div>

<h2>${member.u_name}${Customer_no}님을 위한 도우미들입니다</h2>

<form action="giver_resume_detail_en" method="post">
	<div class='bxslider_area'>
		<ul class="bxslider">

<c:forEach items="${recommend}" var="r">
	<input name="giver_no" type="hidden" value="${r.u_no}" />
			<li><img src="resources/images/1.jpg" alt="Image"
				class="img-fluid" />
				<h3>${r.memberVO.u_name}${r.u_no}</h3>
				<hr>
				<h5>간병 서비스 이력</h5>
				<p>실제 간병한 환자의 병명, 증상 유형 별 분석 데이터</p> <img
				src="resources/images/4.png" />
				<div class="care-list">
					<div class="item">
						<div class="title">재활</div>
						<div class="line-color re"></div>
						<div class="count">
							<span>12</span>회
						</div>
					</div>
					<div class="item">
						<div class="title">암</div>
						<div class="line-color am"></div>
						<div class="count">
							<span>12</span>회
						</div>
					</div>
					<div class="item">
						<div class="title">치매</div>
						<div class="line-color ch"></div>
						<div class="count">
							<span>12</span>회
						</div>
					</div>
					<div class="item">
						<div class="title">격리</div>
						<div class="line-color su"></div>
						<div class="count">
							<span>12</span>회
						</div>
					</div>
				</div>
				<hr>
				<h5>도우미에 대한 평가</h5>
				<c:forEach items="${r.giver_satisfactionVO}" var="s">						
					<input type="hidden" id="satisfaction_score" value="${s.customer_satisfaction_score}">				
					<div><span class="stars-container stars-${s.customer_satisfaction_score}">★★★★★</span></div>	
				</c:forEach>
					<br/>
				
									
				<button type="submit" class="btn btn-primary" value="선택하기">선택하기</button></li>
</c:forEach>
		</ul>
	</div>
</form>



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

