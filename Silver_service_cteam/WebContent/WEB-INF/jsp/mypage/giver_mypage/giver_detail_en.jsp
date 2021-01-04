<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>        



<link rel="stylesheet" href="resources/css/my_resume.css">

<script src="resources/js/my_resume.js"></script>

<!-- MAIN -->




			<h1>고객 상세정보</h1>
				
			
											
				<table class="ui celled table">
				<c:forEach items="${custsomer}" var="c">
				<tr><td rowspan="11">기본정보</td></tr>
				<tr>
					<td>이름</td>
					<td colspan='2'>${c.memberVO.u_name}</td>
				</tr>
				
				<tr>
					<td>나이</td>
						<td colspan='2'>
							<input type='hidden' class='u_birth' name='u_birth' value='${c.memberVO.u_birth}'>
							<input type='hidden' class='u_birth2' name='u_birth' value='${c.memberVO.u_birth2}'>
							<span id="age"></span>
    					</td>
				</tr>
				<tr>
					<td>핸드폰번호</td>
						<td colspan='2'>
							${c.memberVO.u_phone}
    					</td>
				</tr>
				<tr>
					<td>E-mail</td>
						<td colspan='2'>
							${c.memberVO.u_email}
    					</td>
				</tr>
				<tr>
					<td> 성별 </td>
					<td colspan='2'> 
						<span id="gender"></span>
     				</td>
   				</tr>				
      				<tr>
      					<td>주소</td>
      					<td colspan='2'>
      					${c.memberVO.u_addr}
      					${c.memberVO.u_addr1}
      					${c.memberVO.u_addr2}</td>
      				</tr>
			<tr>
				<td>기저질환</td>
				<td colspan='2'>
					${c.my_condition}
				</td>
			</tr>
			<tr>
				<td>알레르기</td>
				<td colspan='2'>
					${c.my_allergy}
				</td>
			</tr>
			<tr>
				<td>거동유무</td>
				<td colspan='2'>
					${c.can_walk}
				</td>
			</tr>
			<tr>
				<td>희망근무시간</td>
				<td colspan='2'>
					${c.hope_start_servicetime}~
					${c.hope_end_servicetime}
				</td>
			</tr>					
			</c:forEach>
			</table>

			
				<div class="button_div">			
				<a href="insert_matching?customer_no=${custsomer[0].customer_no}&giver_no=${giver_no[0].giver_no}" class="btn btn-primary">선택하기</a>
				</div>
		    </div>
	    </div>




