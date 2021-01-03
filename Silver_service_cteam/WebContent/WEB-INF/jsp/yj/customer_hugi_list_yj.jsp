<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>    

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
<script
	src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
<script type="text/javascript"
	src="https://www.gstatic.com/charts/loader.js"></script>



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
table{
	margin: 0 auto;
	width: 60%;
	text-align: center;    
    margin-bottom: 2%;	
	}
.button{
	margin: 0 auto;
    text-align: center;	
    margin-bottom: 5%;	
}
</style>




<!-- MAIN -->


<div id="test" class="slide-item overlay"></div>

<form method="post" name="form" id='form'>	
<div class="layer">
	<h2>후기 목록</h2>
	<table id="products" border="1">
		<thead>
			<tr>
				<th>선택</th>
				<th>글번호</th>
				<th>도우미 이름</th>
				<th>서비스 타입</th>
				<th>서비스 장소</th>
				<th>후기내용</th>
				<th>별점</th>
				<th>날짜</th>
			</tr>
		</thead>
		<tbody>
			<!--  반복문으로 사용 -->
		<c:forEach items="${hugi}" var="h">

			<tr>
				<td><input type="radio" name='hugi_no' value='${h.hugi_no}'></td>
				<td>${h.hugi_no}</td>
				<td>
					<a href="customer_hugi_detail_look_yj">${h.memberVO.u_name}</a>
				</td>
				<td>${h.giver.giver_type}</td>
				<td>${h.giver.hope_business_place}</td>
				<td>${h.hugi_contents}</td>
				<td>${h.hugi_score}</td>
				<td>${h.hugi_redate}</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="button">
		<button type="submit" class="btn btn-primary" id="delete" value="후기삭제" onclick="javascript: form.action='deleteHugi';">후기삭제</button>
		<button type="submit" class="btn btn-primary" id="update" value="후기수정" onclick="javascript: form.action='updateHugi';">후기수정</button>	
	</div>
</div>
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



</body>
</html>