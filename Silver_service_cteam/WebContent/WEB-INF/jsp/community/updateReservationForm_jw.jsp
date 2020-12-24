<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<link rel="stylesheet" href="resources/css/welfareFacilityDetail.css">

<!-- MAIN -->
<div id="test" class="slide-item overlay"></div>

<form action="updateReservation" class='wirtehugi' method="POST">
	<div class="layer">
		<div class="layer_inner">
			<h1>예약 날짜 변경하기</h1>
			<table class="ui celled table" style="width: 1000px; margin: auto;">
				<tr>
					<td rowspan="5">예약 정보</td>
				</tr>
				<tr>
					<td>시설분류</td>
					<td>${myReservation.welfareFacilitiesVO.typeName}</td>
				</tr>
				<tr>
					<td>시설명</td>
					<td>${myReservation.facilityName}</td>
				</tr>
				<tr>
					<td>주소</td>
					<td>${myReservation.welfareFacilitiesVO.address}</td>
				</tr>
				<tr>
					<td>전화번호</td>
					<td>${myReservation.welfareFacilitiesVO.telnumber}</td>
				</tr>
				<tr>
					<td rowspan="7">회원정보</td>
				</tr>
				<tr>
					<td>이름</td>
					<td>${myReservation.userName}</td>
				</tr>
				<tr>
					<td>생년월일</td>
					<td>${myReservation.memberVO.u_birth}</td>
				</tr>
				<tr>
					<td>나이</td>
					<td>${myReservation.memberVO.u_age}</td>
				</tr>
				<tr>
					<td>성별</td>
					<td>${myReservation.memberVO.u_gender}</td>
				</tr>
				<tr>
					<td>주소</td>
					<td>${myReservation.memberVO.u_addr}</td>
				</tr>
				<tr>
					<td>전화번호</td>
					<td>${myReservation.memberVO.u_phone}</td>
				</tr>
				<tr>
					<td rowspan="6">예약 정보</td>
				</tr>
				<tr>
					<td>희망 날짜</td>
					<td><input type='date' name='resDate' id="datepicker" /></td>
				</tr>
				<tr>
					<td>희망 시간</td>
					<td><select name="resTime" id="resTime" class="select_css03">
							<option value="">희망시간</option>
							<optgroup label="오전">
								<option value="09:00" style="background: #CCFFFF;">오전
									9:00</option>
								<option value="09:30" style="background: #CCFFFF;">오전
									9:30</option>
								<option value="10:00" style="background: #CCFFFF;">오전
									10:00</option>
								<option value="10:30" style="background: #CCFFFF;">오전
									10:30</option>
								<option value="11:00" style="background: #CCFFFF;">오전
									11:00</option>
								<option value="11:30" style="background: #CCFFFF;">오전
									11:30</option>
							</optgroup>
							<optgroup label="오후">
								<option value="12:00" style="background: #FFCC99;">오후
									12:00</option>
								<option value="12:30" style="background: #FFCC99;">오후
									12:30</option>
								<option value="13:00" style="background: #FFCC99;">오후
									1:00</option>
								<option value="13:30" style="background: #FFCC99;">오후
									1:30</option>
								<option value="14:00" style="background: #FFCC99;">오후
									2:00</option>
								<option value="14:30" style="background: #FFCC99;">오후
									2:30</option>
								<option value="15:00" style="background: #FFCC99;">오후
									3:00</option>
								<option value="15:30" style="background: #FFCC99;">오후
									3:30</option>
								<option value="16:00" style="background: #FFCC99;">오후
									4:00</option>
								<option value="16:30" style="background: #FFCC99;">오후
									4:30</option>
								<option value="17:00" style="background: #FFCC99;">오후
									5:00</option>
								<option value="17:30" style="background: #FFCC99;">오후
									5:30</option>
								<option value="18:00" style="background: #FFCC99;">오후
									6:00</option>
							</optgroup>
					</select></td>
				</tr>
				<tr>
					<td>방문 목적</td>
					<td><textarea name="visitPurpose" cols=60 rows=3>${myReservation.visitPurpose}</textarea>
					</td>
				</tr>
			</table>
			<input type="hidden" name="resNo" value="${myReservation.resNo}">
			<div class="button_div">
				<input type="submit" class="btn btn-primary" value="수정">
			</div>
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
