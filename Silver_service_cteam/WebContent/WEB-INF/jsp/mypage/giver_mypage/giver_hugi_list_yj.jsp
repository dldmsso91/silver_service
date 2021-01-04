<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>    

<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap" rel="stylesheet">

<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
<!-- MAIN -->

<style>
h1{
    font-family: 'Noto Sans KR', sans-serif;
    border-bottom: double #c7c7c7;
    width: 40%;
    margin: 0 auto;
}


.customer {

    width: 100%;

    border-radius: 20px;
}
table {
    margin: 0 auto;
    /* border: 1px solid; */
    margin-top: 5%;
    color: #7d7d7d;
    font-size: 17px;
    text-align: center;
    word-spacing: 2px;
    line-height: 34px;
    width: 80%;
}
td{ border-bottom: 1px solid #dee2e6;

}
th{
    height: 6vh;
}
h4{
    margin-top: 9%;
    font-size: 28px;
    color: #797979;
    font-family: 'Noto Sans KR', sans-serif;
}
.button{
	margin: 0 auto;
    text-align: center;	
    margin-bottom: 5%;	
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

.no_resume_msg{
    border-bottom: none;
    width: 100%;
	font-family: 'Jua', sans-serif;
	color: #383737;
}
</style>



<c:if test="${hugi[0] == null}">

	<br>
	<br>
	<div class="My_Image">
	<img src="resources/images/sorry.png" >		
	</div>
	<br>
	<h1 class="no_resume_msg">아직 작성한 후기가 없습니다</h1>
	<h5 class="no_resume_msg">*서비스 매칭 후 부터 작성이 가능하십니다*</h5>
	
</c:if>

<c:if test="${hugi[0] != null}">
<h3>내 후기 내역보기</h3>
<form method="post" name="form" id='form'>	
	<div class="customer">
     <table class="table table-hover">
 		<thead>
			<tr>
				<th>선택</th>
				<th>도우미 이름</th>
				<th>서비스 타입</th>
				<th>서비스 장소</th>
				<th>후기내용</th>
				<th>별점</th>
				<th>날짜</th>
			</tr>
		</thead>
				
		<c:forEach items="${hugi}" var="h">
			<tr>
				<td><input type="radio" name='hugi_no' value='${h.hugi_no}'></td>
				<td>
					<a href="customer_hugi_detail_look_yj">${h.memberVO.u_name}</a>
				</td>
				<td>${h.customerVO.giver_type}</td>
				<td>${h.customerVO.hope_service_place}</td>
				<td>${h.hugi_contents}</td>
				<td>
				<input type="hidden" id="hugi_score" value="${h.hugi_score}">				
				<div><span class="stars-container stars-${h.hugi_score}">★★★★★</span></div>	
				</td>
				<td>${h.hugi_redate}</td>										
			</tr>
		</c:forEach>
		

	</table>	
	</div>
	<div class="button">
		<button type="submit" class="btn btn-primary" id="update" value="후기수정" onclick="javascript: form.action='updateHugi';">후기수정</button>	
		<button type="submit" class="btn btn-primary" id="delete" value="후기삭제" onclick="javascript: form.action='deleteHugi';">후기삭제</button>
	</div>
</form>	
</c:if>	
<script src="resources/js/my_resume.js"></script>
