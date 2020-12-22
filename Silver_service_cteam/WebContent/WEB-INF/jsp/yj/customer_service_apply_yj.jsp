<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
<script
	src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
<script type="text/javascript"
	src="https://www.gstatic.com/charts/loader.js"></script>




<script>
	//나이 계산
	function fnAge() {
		var today = new Date();
		var y = document.getElementById('y').value;
		if (y == '' || y.length < 4) {
			alert('년도(예>1990)를 입력하세요.');
			document.getElementById('age').innerText = '?';
			document.getElementById('y').focus();
			return false;
		}
		if (Number(y) < (today.getFullYear() - 150)) {
			alert('나이가 너무 많습니다.');
			document.getElementById('age').innerText = '?';
			document.getElementById('y').focus();
			return false;
		}
		if (Number(y) >= today.getFullYear()) {
			alert('1살 이하입니다.');
			document.getElementById('age').innerText = '?';
			document.getElementById('y').focus();
			return false;
		}
		var m = document.getElementById('m').value;
		if (m == '' || m.length < 1 || (Number(m) < 1 || Number(m) > 12)) {
			alert('월(예>1~12)을 입력하세요.');
			document.getElementById('age').innerText = '?';
			document.getElementById('m').focus();
			return false;
		}
		var d = document.getElementById('d').value;
		if (d == '' || d.length < 1 || (Number(d) < 1 || Number(d) > 31)) {
			alert('일(예>1~31)을 입력하세요.');
			document.getElementById('d').focus();
			return false;
		}
		var birthday = new Date(m + '/' + d + '/' + y);
		var years = today.getFullYear() - birthday.getFullYear();
		// 현재 년도에서 생일을 재설정
		birthday.setFullYear(today.getFullYear());
		// 생일이 지났으면 -1
		if (today < birthday) {
			years--;
		}
		document.getElementById('age').innerHTML = years;
	}
</script>


<style>
<
style>.table {
	width: 45%;
	margin-bottom: 1rem;
	text-align: center;
	margin: 0 auto;
	margin-top: 50px;
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
</style>




<!-- MAIN -->


<div id="test" class="slide-item overlay"></div>





<form action="POST" class='wirtehugi'>
	<div class="layer">

		<div class="layer_inner">
			<h1>서비스 신청하기</h1>
			<div class="My_Image">
				<img src="resources/images/img_3_sq.jpg" alt="My Image">
			</div>
			<table class="ui celled table" style="width: 1000px; margin: auto;">
				<tr>
					<td rowspan="10">기본정보</td>
				</tr>
				<tr>
					<td>이름</td>
					<td><input type='text' name='name' style="width: 30%;" /></td>
				</tr>
				<tr>
					<td>생년월일</td>
					<td><input type="text" id="y" maxlength="4" class="nb"
						value="" onblur="this.value=this.value.only_number();"
						style="width: 100px;" />년 <input type="text" id="m" maxlength="2"
						class="nb" value="" onblur="this.value=this.value.only_number();"
						style="width: 100px;" />월 <input type="text" id="d" maxlength="2"
						class="nb" value="" onblur="this.value=this.value.only_number();"
						style="width: 100px;" />일 <input type="button" id="btn_age"
						onclick="fnAge()" value="확인" class="btn btn-primary" /></td>
				</tr>
				<tr>
					<td>나이</td>
					<td><span id="age">세</span>
					<td>
				</tr>
				<tr>
					<td>성별</td>
					<td><input type='radio' name='gender' value='Male' />남자&nbsp;&nbsp;&nbsp;
						<input type='radio' name='gender' value='Female' />여자</td>
				</tr>
				<tr>
					<td>전화번호</td>
					<td><input type="text" name="phonenumber"></td>
				</tr>
				<tr>
					<td>주소</td>
					<td><input type="text" name="address" style="width: 30%;"></td>
				</tr>
				<tr>
					<td>현재상태</td>
					<td><input type="checkbox" name="status" value="수술"><label>수술</label>&nbsp;&nbsp;&nbsp;
						<input type="checkbox" name="status" value="재활"><label>재활</label>&nbsp;&nbsp;&nbsp;
						<input type="checkbox" name="status" value="암"><label>암</label>&nbsp;&nbsp;&nbsp;
						<input type="checkbox" name="status" value="치매"><label>치매</label>&nbsp;&nbsp;&nbsp;
						<input type="checkbox" name="status" value="정신질환"><label>정신질환</label>&nbsp;&nbsp;&nbsp;
						<input type="checkbox" name="status" value="실명"><label>실명</label>&nbsp;&nbsp;&nbsp;
						<input type="checkbox" name="status" value="격리"><label>격리</label>&nbsp;&nbsp;&nbsp;
						<input type="checkbox" name="status" value="전염성"><label>전염성</label>&nbsp;&nbsp;&nbsp;
						<input type="checkbox" name="status" value="욕창"><label>욕창</label>&nbsp;&nbsp;&nbsp;
						<input type="checkbox" name="status" value="의식불명"><label>의식불명</label>
					</td>
				</tr>
				<tr>
					<td>거동여부</td>
					<td><input type='radio' name='walk' value='walk' /><label>거동가능</label>&nbsp;&nbsp;&nbsp;
						<input type='radio' name='walk' value='nowalk' /><label>거동불가능</label>
					</td>
				</tr>
				<tr>
					<td>희망시간</td>
					<td>
						<div class="r_time1">
							<input type="hidden" class="r_time_v" name="r_time" id="r_time"
								value="">
							<script type="text/javascript">
								$(document)
										.ready(
												function() {
													var b_val = $("#r_time")
															.val();
													$(".r_b_time")
															.click(
																	function() {
																		if ($(
																				this)
																				.hasClass(
																						"on")) {
																			$(
																					this)
																					.removeClass(
																							"on");
																		} else {
																			$(
																					this)
																					.addClass(
																							"on");
																		}

																		var re_val = "";
																		var r_b_time_text_chk = "";
																		$(
																				".r_b_time.on")
																				.each(
																						function() {
																							// re_val 변수가 비어있을때
																							if (re_val != "") {
																								re_val += ","
																										+ $(
																												this)
																												.data(
																														"val");
																							} else {
																								re_val += $(
																										this)
																										.data(
																												"val");
																							}

																							if ($(
																									this)
																									.data(
																											"val") == "1005") {
																								r_b_time_text_chk = "y";
																							}
																						});

																		if (r_b_time_text_chk == "y") {
																			$(
																					"#r_time_text")
																					.show();
																		} else {
																			$(
																					"#r_time_text")
																					.hide();
																		}

																		$(
																				"#r_time")
																				.val(
																						re_val);
																	});

													if ($(".r_b_time").eq(4)
															.hasClass("on") == true) {
														$("#r_time_text")
																.show();
													}
												});
							</script>
							<span id="r_time_text"> <select name="r_time_start"
								id="r_time_start" class="select_css03">
									<option value="">시작시간</option>
									<optgroup label="오전">
										<option value="01:00">오전 1:00</option>
										<option value="01:30">오전 1:30</option>
										<option value="02:00">오전 2:00</option>
										<option value="02:30">오전 2:30</option>
										<option value="03:00">오전 3:00</option>
										<option value="03:30">오전 3:30</option>
										<option value="04:00">오전 4:00</option>
										<option value="04:30">오전 4:30</option>
										<option value="05:00">오전 5:00</option>
										<option value="05:30">오전 5:30</option>
										<option value="06:00">오전 6:00</option>
										<option value="06:30">오전 6:30</option>
										<option value="07:00">오전 7:00</option>
										<option value="07:30">오전 7:30</option>
										<option value="08:00">오전 8:00</option>
										<option value="08:30">오전 8:30</option>
										<option value="09:00">오전 9:00</option>
										<option value="09:30">오전 9:30</option>
										<option value="10:00">오전 10:00</option>
										<option value="10:30">오전 10:30</option>
										<option value="11:00">오전 11:00</option>
										<option value="11:30">오전 11:30</option>
									</optgroup>
									<optgroup label="오후">
										<option value="12:00">낮 12:00</option>
										<option value="12:30">낮 12:30</option>
										<option value="13:00">오후 1:00</option>
										<option value="13:30">오후 1:30</option>
										<option value="14:00">오후 2:00</option>
										<option value="14:30">오후 2:30</option>
										<option value="15:00">오후 3:00</option>
										<option value="15:30">오후 3:30</option>
										<option value="16:00">오후 4:00</option>
										<option value="16:30">오후 4:30</option>
										<option value="17:00">오후 5:00</option>
										<option value="17:30">오후 5:30</option>
										<option value="18:00">오후 6:00</option>
										<option value="18:30">오후 6:30</option>
										<option value="19:00">오후 7:00</option>
										<option value="19:30">오후 7:30</option>
										<option value="20:00">오후 8:00</option>
										<option value="20:30">오후 8:30</option>
										<option value="21:00">오후 9:00</option>
										<option value="21:30">오후 9:30</option>
										<option value="22:00">오후 10:00</option>
										<option value="22:30">오후 10:30</option>
										<option value="23:00">오후 11:00</option>
										<option value="23:30">오후 11:30</option>
										<option value="00:00">밤 12:00</option>
										<option value="00:30">밤 12:30</option>
									</optgroup>
							</select>부터&nbsp;&nbsp; <select name="r_time_end" id="r_time_end"
								class="select_css03">
									<option value="">종료시간</option>
									<optgroup label="오후">
										<option value="12:00">낮 12:00</option>
										<option value="12:30">낮 12:30</option>
										<option value="13:00">오후 1:00</option>
										<option value="13:30">오후 1:30</option>
										<option value="14:00">오후 2:00</option>
										<option value="14:30">오후 2:30</option>
										<option value="15:00">오후 3:00</option>
										<option value="15:30">오후 3:30</option>
										<option value="16:00">오후 4:00</option>
										<option value="16:30">오후 4:30</option>
										<option value="17:00">오후 5:00</option>
										<option value="17:30">오후 5:30</option>
										<option value="18:00">오후 6:00</option>
										<option value="18:30">오후 6:30</option>
										<option value="19:00">오후 7:00</option>
										<option value="19:30">오후 7:30</option>
										<option value="20:00">오후 8:00</option>
										<option value="20:30">오후 8:30</option>
										<option value="21:00">오후 9:00</option>
										<option value="21:30">오후 9:30</option>
										<option value="22:00">오후 10:00</option>
										<option value="22:30">오후 10:30</option>
										<option value="23:00">오후 11:00</option>
										<option value="23:30">오후 11:30</option>
										<option value="00:00">밤 12:00</option>
										<option value="00:30">밤 12:30</option>
									</optgroup>
									<optgroup>
										<option value="01:00">오전 1:00</option>
										<option value="01:30">오전 1:30</option>
										<option value="02:00">오전 2:00</option>
										<option value="02:30">오전 2:30</option>
										<option value="03:00">오전 3:00</option>
										<option value="03:30">오전 3:30</option>
										<option value="04:00">오전 4:00</option>
										<option value="04:30">오전 4:30</option>
										<option value="05:00">오전 5:00</option>
										<option value="05:30">오전 5:30</option>
										<option value="06:00">오전 6:00</option>
										<option value="06:30">오전 6:30</option>
										<option value="07:00">오전 7:00</option>
										<option value="07:30">오전 7:30</option>
										<option value="08:00">오전 8:00</option>
										<option value="08:30">오전 8:30</option>
										<option value="09:00">오전 9:00</option>
										<option value="09:30">오전 9:30</option>
										<option value="10:00">오전 10:00</option>
										<option value="10:30">오전 10:30</option>
										<option value="11:00">오전 11:00</option>
										<option value="11:30">오전 11:30</option>
									</optgroup>
							</select> 까지
							</span>

						</div>
					</td>
				</tr>
			</table>
			<div class="button_div">
				<p>
					<a href="recommend_service_en" class="btn btn-primary">작성</a>
				</p>
				<p>
					<a href="index" class="btn btn-primary">취소</a>
				</p>
				<!--                    <input name="write" type="submit" value="작성하기"> -->
				<!--                      <input name="cancel"type="reset" value="취소하기"> -->
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
<script></script>