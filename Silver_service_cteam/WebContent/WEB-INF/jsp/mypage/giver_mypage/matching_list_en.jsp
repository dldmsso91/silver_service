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
    height: 4vh;
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
.no_resume_msg{
    border-bottom: none;
    width: 100%;
	font-family: 'Jua', sans-serif;
	color: #383737;
}
</style>


	<c:if test="${matching_list[0] == null}">
	
		<br>
		<br>
		<div class="My_Image">
		<img src="resources/images/sorry.png" >		
		</div>
		<br>
		<h1 class="no_resume_msg">아직 연결된 매칭이 없습니다</h1>
		
	</c:if>
	
	<c:if test="${matching_list[0] != null}">


    <h3>연결된 서비스 확인하기</h3>


	<div class="customer">
     <table class="table table-hover">
        <thead>
			<tr><th>고객명</th><th>서비스 타입</th><th>서비스 장소</th><th>서비스 시작일자</th><th>선택</th></tr>
	    </thead>
	<c:forEach items="${matching_list}" var="c">
		<tr>
			<td>${c.memberVO.u_name}</td>
			<td>${c.customerVO.giver_type}</td>
			<td>${c.memberVO.u_addr1}${c.memberVO.u_addr2}</td>
			<td>${c.service_matching_redate}</td>
			
			<td><a href="my_matching_giver?customer_no=${c.customerVO.customer_no}" class="btn btn-primary" style="width: 180px;">서비스 자세히 보기</a>
		</tr>

	</c:forEach>	
	</table>	
	</div>
	</c:if>		

<script src="resources/js/my_resume.js"></script>