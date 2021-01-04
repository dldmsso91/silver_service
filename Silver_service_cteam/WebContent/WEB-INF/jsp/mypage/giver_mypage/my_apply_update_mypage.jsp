<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>        
    
	<h3 style="text-align:center; margin:auto;">내 정보</h3>
	
	<form method="post" name="form" id='form' action="updateCustomer_mypage">	

		<table class="ui celled table"    style="width: 50% ;text-align: center;margin: auto;">
		<c:forEach items="${Default}" var="d">
			<tr><td rowspan="11">신청정보</td></tr>
			<tr>
	 			<td>도우미타입</td>
				<td colspan='2'> 
					<input type="text" name="giver_type" value="${d.giver_type}">
				</td>
			</tr>
				<tr>
					<td>현재상태</td>
					<td colspan='2'> 
						<input type="text" name="my_condition" value="${d.my_condition}">
					</td>
				</tr>
			<tr>
				<td>알러지유무</td>
				<td colspan='2'> 
					<input type="text" name="my_allergy" value="${d.my_allergy}">
				</td>
			</tr>
			<tr>
				<td>거동여부</td>
				<td colspan='2'> 
					<input type="text" name="can_walk" value="${d.can_walk}">
				</td>
			</tr>
			<tr>
				<td>희망시작날짜</td>
				<td colspan='2'> 
					<input type="date" name="hope_start_date" value="${d.hope_start_date}"> 부터
					<input type="date" name="hope_finish_date" value="${d.hope_finish_date}">	
				</td>
			</tr>
				<tr>
				<td>희망장소</td>
				<td colspan='2'> 
					<input type="text" name="hope_service_place" value="${d.hope_service_place}">
				</td>
			</tr>
				<tr>
					<td>희망월급</td>
					<td colspan='2'> 
					<input type="text" name="hope_salary" value="${d.hope_salary}">
				</td>
			</tr>
				<tr>
				<td>희망시간</td>
				<td colspan='2'> 
					<input type="text" name="hope_start_servicetime" value="${d.hope_start_servicetime}"> 부터
					<input type="text" name="hope_end_servicetime" value="${d.hope_end_servicetime}">
				</td>
			</tr>
			</c:forEach>
		</table>
<input type="hidden" name="customer_no" value="${Default[0].customer_no}"/>
<div class="button_div">	
<button type="submit" class="btn btn-primary" id="update" value="수정하기" >수정하기</button>		
</div>		
</form>