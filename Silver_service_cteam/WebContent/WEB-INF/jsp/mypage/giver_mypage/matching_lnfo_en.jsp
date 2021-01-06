<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>    

<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap" rel="stylesheet">


<!-- MAIN -->

<style>
h1{
    font-family: 'Noto Sans KR', sans-serif;
    border-bottom: double #c7c7c7;
    width: 40%;
    margin: 0 auto;
}

.box {

    display: inline-flex;
    width: 95%;
    height: 63vh;
    margin-top: 7%;
}
.customer {

    width: 30%;
/*     border: 5px solid #645ace; */
    background: #dcdac075;
    border-radius: 20px;
}
.img {

    width: 40%;}
.giver {

    width: 30%;
/*     border: 5px solid #645ace; */
    background: #ece4e3d1;
    border-radius: 20px;
}
table {
    margin: 0 auto;
    /* border: 1px solid; */
    margin-top: 10%;
    color: #7d7d7d;
    font-size: 17px;
    text-align: left;
    word-spacing: 2px;
    line-height: 34px;
}
tr{ border-bottom: 2px solid #f3f3f3;}
h4{
    margin-top: 9%;
    font-size: 28px;
    color: #797979;
    font-family: 'Noto Sans KR', sans-serif;
}
</style>
    <h1>연결된 서비스 확인하기</h1>

<div class="box">
	<div class="customer">
	<h4>고객 신청서</h4>
	<table>
	<c:forEach items="${matching_customer}" var="c">
		<tr><td>이름 : ${c.memberVO.u_name}</td></tr>
		<tr><td>나이 : 
				<input type='hidden' class='u_birth' name='u_birth' value='${c.memberVO.u_birth}'>
				<input type='hidden' class='u_birth2' name='u_birth' value='${c.memberVO.u_birth2}'>
				<span id="age"></span>
		</td></tr>
		<tr><td>성별 : <span id="gender"></span></td></tr>
		<tr><td>주소 : ${c.memberVO.u_addr1}${c.memberVO.u_addr2}</td></tr>
		<tr><td>전화 번호 : ${c.memberVO.u_phone}</td></tr>
		<tr><td>서비스 타입 : ${c.customerVO.giver_type}</td></tr>
		<tr><td>희망 장소 : ${c.customerVO.hope_service_place}</td></tr>
		<tr><td>기저질환 : ${c.customerVO.my_condition}</td></tr>
		<tr><td>알레르기 : ${c.customerVO.my_allergy}</td></tr>
		<tr><td>거동 여부 : ${c.customerVO.can_walk}</td></tr>
		<tr><td>희망 시간 : ${c.customerVO.hope_start_servicetime}~${c.customerVO.hope_end_servicetime}</td></tr>
	</c:forEach>	
	</table>	
	</div>
	<div class="img">
		<img src="resources/images/our2.png" style="width: 80%; margin: 5%; margin-top: 50%;">	
	</div>
	<div class="giver">
	<h4>내 지원서</h4>
	<table>
		<tr><td>이름 : ${matching_giver[0].memberVO.u_name}</td></tr>
		<tr><td>나이 : 
				<input type='hidden' class='u_birth' name='u_birth' value='${matching_giver[0].memberVO.u_birth}'>
				<input type='hidden' class='u_birth2' name='u_birth' value='${matching_giver[0].memberVO.u_birth2}'>
				<span id="age"></span>
		</td></tr>
		<tr><td>성별 :  <span id="gender"></span>	</td></tr>
		<tr><td>주소 : ${matching_giver[0].memberVO.u_addr1}${matching_giver[0].memberVO.u_addr2}</td></tr>
		<tr><td>전화 번호 : ${matching_giver[0].memberVO.u_phone}</td></tr>
		<tr><td>서비스 타입 : ${matching_giver[0].giverVO.giver_type}</td></tr>
		<tr><td>희망 장소 : ${matching_giver[0].giverVO.hope_business_place}</td></tr>
		<tr><td>희망 시간 : ${matching_giver[0].giverVO.hope_worktime_start}~${matching_giver[0].giverVO.hope_worktime_end}</td></tr>
	</table>	
	</div>
	
</div>
<a href="delete_matching_giver?customer_no=${matching_customer[0].customerVO.customer_no}" class="btn btn-primary">서비스 취소하기</a>
<a href="terminate_service?customer_no=${matching_customer[0].customerVO.customer_no}&giver_no=${matching_customer[0].giver_no}" class="btn btn-primary">서비스 종료</a>
<script src="resources/js/my_resume.js"></script>