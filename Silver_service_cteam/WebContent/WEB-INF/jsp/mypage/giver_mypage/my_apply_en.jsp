<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>        





<script src="resources/js/my_resume.js"></script>
<!-- MAIN -->
<style>
.center {
    text-align: center;
    margin: 0 auto;
    margin-top: 4%;
}
.My_Image {
    width: 315px;
    height: 270px;
    border-radius: 30px;
    margin: 0 auto;
    margin-top: 0px;
}
</style>

<form method="post" name="form" id='form'>	
    <div class="layer" >

          <div class="layer_inner">
			<div class="My_Image">
			<img src="resources/images/apply3.png" alt="My Image">		
			</div>
			<h2>내 신청서</h2>
				<table class="ui celled table">
				<tr><td rowspan="11">기본정보</td></tr>
				<tr>
					<td>이름</td>
					<td colspan='2'>${Default[0].memberVO.u_name}</td>
				</tr>
				<tr>
					<td>핸드폰번호</td>
						<td colspan='2'>
							${Default[0].memberVO.u_phone}
    					</td>
				</tr>
				<tr>
					<td>E-mail</td>
						<td colspan='2'>
							${Default[0].memberVO.u_email}
    					</td>
				</tr>			
      				<tr>
      					<td>주소</td>
      					<td colspan='2'>
      					${Default[0].memberVO.u_addr}
      					${Default[0].memberVO.u_addr1}
      					${Default[0].memberVO.u_addr2}</td>
      				</tr>
			<tr>
				<td>서비스 타입</td>
				<td colspan='2'>
					${Default[0].giver_type}
				</td>
			</tr>
			<tr>
				<td>기저질환</td>
				<td colspan='2'>
					${Default[0].my_condition}
				</td>
			</tr>
			<tr>
				<td>알레르기</td>
				<td colspan='2'>
					${Default[0].my_allergy}
				</td>
			</tr>
			<tr>
				<td>거동여부</td>
				<td colspan='2'>
					${Default[0].can_walk}
				</td>
			</tr>
			<tr>
				<td>희망 날짜</td>
				<td colspan='2'>
					${Default[0].hope_start_date}~
					${Default[0].hope_finish_date}
				</td>
			</tr>
			<tr>
				<td>희망 장소</td>
				<td colspan='2'>
					${Default[0].hope_service_place}
				</td>
			</tr>
			<tr>
				<td>희망 급여</td>
				<td colspan='2'>
					${Default[0].hope_salary}
				</td>
			</tr>
			<tr>
				<td>희망 시간</td>
				<td colspan='2'>
					${Default[0].hope_start_servicetime}~
					${Default[0].hope_end_servicetime}
				</td>
			</tr>
			<tr>
				<td>신청 일자</td>
				<td colspan='2'>
					${Default[0].apply_customer_redate}
				</td>
			</tr>

			</table>
				<input type="hidden" name="customer_no" value="${Default[0].customer_no}"/>   			
				<div class="button_div">			
				<button type="submit" class="btn btn-primary" id="update" value="이력서 수정" onclick="javascript: form.action='my_resume_update_en';">이력서 수정</button>
				<button type="submit" class="btn btn-primary" id="delete" value="이력서 삭제" onclick="javascript: form.action='my_resume_delete_en';">이력서 삭제</button>
				</div>
		    </div>
	    </div>
    </form>
    



