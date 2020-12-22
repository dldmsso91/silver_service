<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>

<style>
.table {
	width: 45%;
	margin-bottom: 1rem;
	text-align: center;
	margin: 0 auto;
	margin-top: 50px;
}

.layer {
	text-align: center;
	margin-top: 25px;
}

.button_div {
	display: inline-flex;
	width: 15%;
	margin: 0 auto;
	margin-top: 20px;
}

.button_div input {
	margin-left: 1%;
	margin-right: 1%;
}

.button_div a {
	
}

.button_div p {
	margin: 0 auto;
}

.My_Image {
	width: 150px;
	overflow: hidden;
	height: 160px;
	border-radius: 30px;
	margin: 0 auto;
	margin-top: 40px;
}

.My_Image img {
	width: 100%;
}
</style>





<!-- MAIN -->


<div id="test" class="slide-item overlay"></div>
<div class="layer">

	<div class="layer_inner">
		<h1>근무시간 확인하기</h1>
		<div class="My_Image">
			<img src="resources/images/1.jpg" alt="My Image">
		</div>
		<p>

			<button onclick="start_time()" value="">출근</button>
			&nbsp; &nbsp; &nbsp;
			<button onclick="end_time()" value="">퇴근</button>
		</p>
		<table class="ui celled table">
			<tr>
				<td rowspan="3">출퇴근정보</td>
			</tr>
			<tr>
				<td>출근시간</td>
				<td id="start_time" name='start_time' style="width: 30%;" /></td>
			</tr>
			<tr>
				<td>퇴근시간</td>
				<td id="end_time" name='end_time' style="width: 30%;" /></td>
			</tr>
			<tr>
				<td rowspan="3">출퇴근정보</td>
			</tr>
			<tr>
				<td>출근시간</td>
				<td id="start_time" name='start_time' style="width: 30%;" /></td>
			</tr>
			<tr>
				<td>퇴근시간</td>
				<td id="end_time" name='end_time' style="width: 30%;" /></td>
			</tr>
			<tr>
				<td rowspan="3">출퇴근정보</td>
			</tr>
			<tr>
				<td>출근시간</td>
				<td id="start_time" name='start_time' style="width: 30%;" /></td>
			</tr>
			<tr>
				<td>퇴근시간</td>
				<td id="end_time" name='end_time' style="width: 30%;" /></td>
			</tr>
			<tr>
				<td rowspan="3">출퇴근정보</td>
			</tr>
			<tr>
				<td>출근시간</td>
				<td id="start_time" name='start_time' style="width: 30%;" /></td>
			</tr>
			<tr>
				<td>퇴근시간</td>
				<td id="end_time" name='end_time' style="width: 30%;" /></td>
			</tr>

		</table>
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
<script src="resources/js/star.js"></script>


</body>
</html>