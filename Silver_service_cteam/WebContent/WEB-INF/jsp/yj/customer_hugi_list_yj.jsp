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


<div id="test" class="slide-item overlay"></div>



<div class="layer">
	<table id="products" border="1"
		style="margin-left: 500px; margin-top: 200px;">
		<thead>
			<tr>
				<th>글번호</th>
				<th>작성자</th>
				<th>이미지</th>
				<th>별점</th>
				<th>날짜</th>
			</tr>
		</thead>
		<tbody>
			<!--  반복문으로 사용 -->
			<tr>
				<td style="width: 154.22222px; height: 154.22222px;">1</td>
				<td style="width: 154.22222px; height: 154.22222px;"><a
					href="customer_hugi_detail_look_yj">작성자</a></td>
				<td style="width: 154.22222px; height: 154.22222px;"><img
					src="resources/images/svg/svg/001-elderly.svg" alt="Image"
					class="img-fluid" style="width: 150px;"></td>
				<td style="width: 154.22222px; height: 154.22222px;">별점</td>
				<td style="width: 154.22222px; height: 154.22222px;">날짜</td>
			</tr>
			<tr>
				<td style="width: 154.22222px; height: 154.22222px;">2</td>
				<td style="width: 154.22222px; height: 154.22222px;"><a
					href="customer_hugi_detail_look_yj">작성자</a></td>
				<td style="width: 154.22222px; height: 154.22222px;"><img
					src="resources/images/svg/svg/001-elderly.svg" alt="Image"
					class="img-fluid" style="width: 150px;"></td>
				<td style="width: 154.22222px; height: 154.22222px;">별점</td>
				<td style="width: 154.22222px; height: 154.22222px;">날짜</td>
			</tr>
			<tr>
				<td style="width: 154.22222px; height: 154.22222px;">3</td>
				<td style="width: 154.22222px; height: 154.22222px;"><a
					href="customer_hugi_detail_look_yj">작성자</a></td>
				<td><img src="resources/images/svg/svg/001-elderly.svg"
					alt="Image" class="img-fluid" style="width: 150px;"></td>
				<td style="width: 154.22222px; height: 154.22222px;">별점</td>
				<td style="width: 154.22222px; height: 154.22222px;">날짜</td>
			</tr>
			<tr>
				<td style="width: 154.22222px; height: 154.22222px;">4</td>
				<td style="width: 154.22222px; height: 154.22222px;"><a
					href="customer_hugi_detail_look_yj">작성자</a></td>
				<td style="width: 154.22222px; height: 154.22222px;"><img
					src="resources/images/svg/svg/001-elderly.svg" alt="Image"
					class="img-fluid" style="width: 150px;"></td>
				<td style="width: 154.22222px; height: 154.22222px;">별점</td>
				<td style="width: 154.22222px; height: 154.22222px;">날짜</td>
			</tr>
			<tr>
				<td style="width: 154.22222px; height: 154.22222px;">5</td>
				<td style="width: 154.22222px; height: 154.22222px;"><a
					href="customer_hugi_detail_look_yj">작성자</a></td>
				<td style="width: 154.22222px; height: 154.22222px;"><img
					src="resources/images/svg/svg/001-elderly.svg" alt="Image"
					class="img-fluid" style="width: 150px;"></td>
				<td style="width: 154.22222px; height: 154.22222px;">별점</td>
				<td style="width: 154.22222px; height: 154.22222px;">날짜</td>
			</tr>
			<tr>
				<td style="width: 154.22222px; height: 154.22222px;">6</td>
				<td style="width: 154.22222px; height: 154.22222px;"><a
					href="customer_hugi_detail_look_yj">작성자</a></td>
				<td style="width: 154.22222px; height: 154.22222px;"><img
					src="resources/images/svg/svg/001-elderly.svg" alt="Image"
					class="img-fluid" style="width: 150px;"></td>
				<td style="width: 154.22222px; height: 154.22222px;">별점</td>
				<td style="width: 154.22222px; height: 154.22222px;">날짜</td>
			</tr>
			<tr>
				<td style="width: 154.22222px; height: 154.22222px;">7</td>
				<td style="width: 154.22222px; height: 154.22222px;"><a
					href="customer_hugi_detail_look_yj">작성자</a></td>
				<td style="width: 154.22222px; height: 154.22222px;"><img
					src="resources/images/svg/svg/001-elderly.svg" alt="Image"
					class="img-fluid" style="width: 150px;"></td>
				<td style="width: 154.22222px; height: 154.22222px;">별점</td>
				<td style="width: 154.22222px; height: 154.22222px;">날짜</td>
			</tr>
			<tr>
				<td style="width: 154.22222px; height: 154.22222px;">8</td>
				<td style="width: 154.22222px; height: 154.22222px;"><a
					href="customer_hugi_detail_look_yj">작성자</a></td>
				<td style="width: 154.22222px; height: 154.22222px;"><img
					src="resources/images/svg/svg/001-elderly.svg" alt="Image"
					class="img-fluid" style="width: 150px;"></td>
				<td style="width: 154.22222px; height: 154.22222px;">별점</td>
				<td style="width: 154.22222px; height: 154.22222px;">날짜</td>
			</tr>
			<tr>
				<td style="width: 154.22222px; height: 154.22222px;">9</td>
				<td style="width: 154.22222px; height: 154.22222px;"><a
					href="customer_hugi_detail_look_yj">작성자</a></td>
				<td><img src="resources/images/svg/svg/001-elderly.svg"
					alt="Image" class="img-fluid" style="width: 150px;"></td>
				<td style="width: 154.22222px; height: 154.22222px;">별점</td>
				<td style="width: 154.22222px; height: 154.22222px;">날짜</td>
			</tr>
			<tr>
				<td>10</td>
				<td style="width: 154.22222px; height: 154.22222px;"><a
					href="customer_hugi_detail_look_yj">작성자</a></td>
				<td style="width: 154.22222px; height: 154.22222px;"><img
					src="resources/images/svg/svg/001-elderly.svg" alt="Image"
					class="img-fluid" style="width: 150px;"></td>
				<td style="width: 154.22222px; height: 154.22222px;">별점</td>
				<td style="width: 154.22222px; height: 154.22222px;">날짜</td>
			</tr>
		</tbody>
		</tbody>
	</table>
	<form action="" id="setRows">
		<p>
			<input type="hidden" name="rowPerPage" value="3">
		</p>
	</form>
	<div></div>
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