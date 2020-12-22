<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>


</script>
<script src="https://code.jquery.com/jquery-3.4.1.js"
	integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
	crossorigin="anonymous">
	
</script>

<script type="text/javascript">
	$(function() {
		// 	    ----------------------------------------삭제시, confirm이 나오게 하는 코드        
		$('#delete').click(function() {
			var result = confirm('정말 삭제하시겠습니까?');

			if (result) {

				yes
				location.replace('index.php');
			}

			else {
				no
			}

		});

		// 	    ----------------------------------------click시 밑에 contents가 나오게 하는 코드div

		$('.inner_item').show();

		for (i = 1; i <= 3; i++) {
			$('.item_header0' + i).click(function() {
				$(this).find('.inner_item').toggle();
			});
		}

		// 	    ----------------------------------------마우스를 갖다댈 시 색변형

		$('.header').hover(function() {
			$(this).find("h4").css("color", "#dc8c8c");
		}, function() {
			$(this).find("h4").css("color", "#565656");
		});
	});
</script>


<style>
.sub_table {
	text-align: center;
	margin: 0 auto;
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
	width: 12%;
	overflow: hidden;
	height: 25vh;
	border-radius: 60%;
	margin: 0 auto;
	margin-top: 40px;
}

.My_Image img {
	width: 100%;
}

.resume_contents {
	width: 75%;
	margin: 0 auto;
	margin-top: 3%;
}

#item_header {
	border: 1px solid #bbbbbb;
	width: 60%;
	margin: 0 auto;
	margin-top: 1%;
}

.header {
	margin: 0 auto;
	padding: 1%;
	margin-top: 1%;
}

.inner_item {
	width: 100%;
	display: none
}
</style>






<!-- MAIN -->


<div id="test" class="slide-item overlay"></div>






<div class="layer">

	<div class="layer_inner">
		<h1>도우미 이력서 열람</h1>
		<div class="default_info">
			<div class="My_Image">
				<img src="resources/images/1.jpg" alt="My Image">
			</div>
		</div>


		<div class="resume_contents">


			<div id="item_header" class="item_header01">
				<div class="header">
					<h4>기본 정보</h4>
				</div>

				<div class="inner_item">
					<table class="ui celled table">
						<tr>
							<td rowspan="5">기본정보</td>
						</tr>
						<tr>
							<td>이름</td>
							<td>이문자</td>
						</tr>
						<tr>
							<td>나이</td>
							<td>43세</td>
						</tr>
						<tr>
							<td>성별</td>
							<td>여자</td>
						</tr>
						<tr>
							<td>주소</td>
							<td>서울특별시 강서구 하늘길 77(방화동 886)</td>
						</tr>
					</table>
				</div>
			</div>
			<div id="item_header" class="item_header01">
				<div class="header">
					<h4>추가정보</h4>
				</div>

				<div class="inner_item">
					<table class="ui celled table">
						<tr>
							<td rowspan="7">추가정보</td>
						</tr>
						<tr>
							<td class="td01">출퇴근형<br>희망근무지역
							</td>
							<td><span class="tit01">1지망 : 서울 / 마포구 전체 <input
									type="text" name="area2_search_text" id="area2_search_text"
									class="inbor1" value="" style="width: 70px; display: none">
							</span> <br> <span class="tit01">2지망 : 서울 / 마포구 전체 </span> <br>
								<span class="tit01">3지망 : 서울 / 마포구 전체 </span>
								<div style="margin: 10px 0 5px 30px; display: none"
									id="all_area_view">
									<label><input type="checkbox" value="1" name="all_area">
										<span id="all_area_name"></span>지역전체 <span
										style="color: #FF0000">(희망근무지역 1,2,3지망 위주로 채용자에게 알림이
											나갑니다.)</span></label>
								</div></td>
						<tr>
							<td>경력</td>
							<td>10년</td>
						</tr>
						<tr>
							<td>근무시간</td>
							<td>오전 9:00 ~ 오후 11:00 까지 가능</td>
						</tr>
						<tr>
							<td>희망급여</td>
							<td>시간제</td>
						</tr>
						<tr>
							<td>자격증</td>
							<td>유</td>
						</tr>
						<tr>
							<td>간단 자기소개</td>
							<td>안녕하세요 오랜 경력으로 최선을 다하겠습니다! 믿고 맡겨주세요!</td>
						</tr>
					</table>
				</div>
			</div>
			<div id="item_header" class="item_header01">
				<div class="header">
					<h4>성격 진단검사</h4>
				</div>

				<div class="inner_item">
					<table class="ui celled table">
						<tr>
							<td rowspan="2">성격 진단검사</td>
						</tr>
						<tr>
							<td>
								<table class="sub_table" style="border: 1px solid #dee2e6;">
									<tr>
										<th>외향성</th>
										<th>호감성</th>
										<th>성실성</th>
										<th>정서적 불안정성</th>
										<th>경험에 대한 개방성</th>
									</tr>
									<tr>
										<td>55</td>
										<td>66</td>
										<td>77</td>
										<td>88</td>
										<td>99</td>
									</tr>
								</table>
							</td>
							<td></td>
						</tr>
					</table>
				</div>
			</div>
			<div id="item_header" class="item_header01">
				<div class="header">
					<h4>경력사항</h4>
				</div>

				<div class="inner_item">
					<table class="ui celled table">
						<tr>
							<td rowspan="7">경력사항</td>
						</tr>
						<tr>
							<td class="td01">좋은간병</td>
							<td>2010~2020년</td>
						</tr>
						<tr>
							<td class="td01">좋은간병</td>
							<td>2010~2020년</td>
						</tr>
						<tr>
							<td class="td01">좋은간병</td>
							<td>2010~2020년</td>
						</tr>
					</table>
				</div>
			</div>

			<div class="button_div">
				<p>
					<a href="succesed_apply_service_en" class="btn btn-primary"
						style="margin-top: 30px;">선택하기</a>
				</p>
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