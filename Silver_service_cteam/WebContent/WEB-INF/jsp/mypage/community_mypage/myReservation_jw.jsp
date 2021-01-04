<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>


<div class="9u" id="right_contents">
	<h2>예약 확인하기</h2>
	<form action="reservationDelete" method="post">
		<table class="table tabl e-boardered">
			<thead>
				<tr>
					<th nowrap>시설명</th>
					<th nowrap>주소</th>
					<th nowrap>전화번호</th>
					<th nowrap>예약자명</th>
					<th nowrap>예약일정</th>
					<th nowrap>방문목적</th>
					<th nowrap>예약수정</th>
					<th nowrap>예약취소</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${myReservation}" var="myReservation">
					<tr>
						<td nowrap>${myReservation.facilityName}</td>
						<td nowrap>${myReservation.welfareFacilitiesVO.address}</td>
						<td nowrap>${myReservation.welfareFacilitiesVO.telnumber}</td>
						<td nowrap>${myReservation.userName}</td>
						<td nowrap>${myReservation.resDate}${myReservation.resTime}</td>
						<td nowrap>${myReservation.visitPurpose}</td>
						<td nowrap><a
							href="updateReservationForm?resNo=${myReservation.resNo}"> <input
								type="button" value="수정">
						</a></td>
						<td nowrap><input type="hidden" name="resNo"
							value="${myReservation.resNo}"> <input type="submit"
							value="삭제"></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</form>

</div>




