<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<script type="text/javascript"
	src="https://www.gstatic.com/charts/loader.js"></script>




<script type="text/javascript">

    $(function(){

// 	    ----------------------------------------삭제시, confirm이 나오게 하는 코드
        
	    $('#delete').click(function(){
	    	var result = confirm('정말 삭제하시겠습니까?'); 

	    	if(result){ 

		    	yes 
		    	location.replace('index.php');} 

		    else{ no }

		    });

    </script>



<style>
.table {
	width: 55%;
	margin-bottom: 1rem;
	text-align: center;
	margin: 0 auto;
	margin-top: 50px;
}

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

<c:forEach items="${giver}" var="g">
	<div class="layer">

		<div class="layer_inner">
			<h1>도우미 이력서 열람</h1>
			<div class="My_Image">
				<img src="resources/images/1.jpg" alt="My Image">
			</div>
			<table class="ui celled table">
				<tr>
					<td rowspan="5">기본정보</td>
				</tr>
				<tr>
					<td>이름</td>
					<td>${g.memberVO.u_name}</td>
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
					<td>${g.memberVO.u_addr}</td>
				</tr>
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
				<tr>
					<td rowspan="1">성격 진단검사</td>
					<td colspan="2">
						<div id="curve_chart" style="width: 900px; height: 500px"></div>
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
				</tr>
				<tr>
					<td rowspan="7">경력사항</td>
				</tr>
				<tr>
					<td class="td01">${g.careerVO.career_name}</td>
					<td>2010~2020년</td>
				</tr>
				<tr>
					<td class="td01"></td>
					<td>2010~2020년</td>
				</tr>
				<tr>
					<td class="td01"></td>
					<td>2010~2020년</td>
				</tr>
			</table>
		</div>
	</div>
</c:forEach>

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