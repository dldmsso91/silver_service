<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!-- <link rel="stylesheet" href="resources/assets/css/bootstrap.min.css"> -->
<!-- Fontawesome CSS -->
<!-- <link rel="stylesheet" href="resources/assets/plugins/fontawesome/css/fontawesome.min.css"> -->
<link rel="stylesheet" href="resources/assets/plugins/fontawesome/css/all.min.css">
<!-- Main CSS -->
<link rel="stylesheet" href="resources/assets/css/style.css">
<!-- 구글폰트 -->
<!-- <link href="https://fonts.googleapis.com/css?family=Nanum+Gothic:400,700,800&amp;subset=korean" rel="stylesheet"> -->
<!-- <link rel="precsonnect" href="https://fonts.gstatic.com"> -->
<!-- <link href="https://fonts.googleapis.com/css2?family=Major+Mono+Display&display=swap" rel="stylesheet"> -->
<!-- MAIN -->
<link rel="stylesheet" href="resources/css/welfareFacilityDetail.css">

<div id="test" class="slide-item overlay"></div>

<div class="layer">
	<div class="layer_inner">
		<h1>시설 상세 정보</h1>
		<table class="ui celled table">
			<tr>
				<td>시설분류</td>
				<td>${facInfo.typeName}</td>
			</tr>
			<tr>
				<td>시설명</td>
				<td>${facInfo.facilityName}</td>
			</tr>
			<tr>
				<td>주소</td>
				<td>${facInfo.address}</td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td>${facInfo.telnumber}</td>
			</tr>
			<tr>
				<td>정원</td>
				<td>${facInfo.peopleLimit}</td>
			</tr>
			<tr>
				<td>현원</td>
				<td>${facInfo.peopleNow}</td>
			</tr>
			<tr>
				<td>잔여</td>
				<td>${facInfo.peopleMargin}</td>
			</tr>
			<tr>
				<td>대기</td>
				<td>${facInfo.peopleWait}</td>
			</tr>
		</table>
		<h4>평가결과</h4>
		<table class="ui celled table">
			<tr>
				<td>평가날짜</td>
				<td>평가등급</td>
				<td>기관운영</td>
				<td>환경및안전</td>
				<td>수급자권리보장</td>
				<td>급여제공과정</td>
				<td>급여제공결과</td>
			</tr>
			<tr>
				<td>${facInfo.welfareFacilityScoreVO.evaluateDate}</td>
				<td>${facInfo.eavaluationResult}</td>
				<td>${facInfo.welfareFacilityScoreVO.manageScore}점</td>
				<td>${facInfo.welfareFacilityScoreVO.safetyScore}점</td>
				<td>${facInfo.welfareFacilityScoreVO.assureScore}점</td>
				<td>${facInfo.welfareFacilityScoreVO.processScore}점</td>
				<td>${facInfo.welfareFacilityScoreVO.resultScore}점</td>
			</tr>
		</table>
		<h4>인력현황</h4>
		<table class="ui celled table">
			<tr>
				<td>총인원</td>
				<td>시설장</td>
				<td>사무국장</td>
				<td>사회복지사</td>
				<td>전임의사</td>
				<td>계약의사</td>
				<td>간호사</td>
				<td>간호조무사</td>
				<td>치위생사</td>
				<td>요양보호사 1급</td>
				<td>요양보호사 2급</td>
				<td>요양보호사 유예</td>
				<td>물리치료사</td>
				<td>작업치료사</td>
				<td>사무원</td>
				<td>영양원</td>
				<td>조리원</td>
				<td>위생원</td>
				<td>관리인</td>
				<td>보조원</td>
				<td>기타</td>
			</tr>
			<tr>
				<td>${facInfo.welfareFacilityStaffVO.staffTotal}</td>
				<td>${facInfo.welfareFacilityStaffVO.director}</td>
				<td>${facInfo.welfareFacilityStaffVO.general}</td>
				<td>${facInfo.welfareFacilityStaffVO.socialWorker}</td>
				<td>${facInfo.welfareFacilityStaffVO.doctor}</td>
				<td>${facInfo.welfareFacilityStaffVO.contractDoctor}</td>
				<td>${facInfo.welfareFacilityStaffVO.nurse}</td>
				<td>${facInfo.welfareFacilityStaffVO.nurseAside}</td>
				<td>${facInfo.welfareFacilityStaffVO.dentalist}</td>
				<td>${facInfo.welfareFacilityStaffVO.careWorker1st}</td>
				<td>${facInfo.welfareFacilityStaffVO.careWorker2nd}</td>
				<td>${facInfo.welfareFacilityStaffVO.careWorker3rd}</td>
				<td>${facInfo.welfareFacilityStaffVO.physicalTherapist}</td>
				<td>${facInfo.welfareFacilityStaffVO.occupationalTherapist}</td>
				<td>${facInfo.welfareFacilityStaffVO.officer}</td>
				<td>${facInfo.welfareFacilityStaffVO.nutritionist}</td>
				<td>${facInfo.welfareFacilityStaffVO.cook}</td>
				<td>${facInfo.welfareFacilityStaffVO.cleanliness}</td>
				<td>${facInfo.welfareFacilityStaffVO.keeper}</td>
				<td>${facInfo.welfareFacilityStaffVO.assitant}</td>
				<td>${facInfo.welfareFacilityStaffVO.others}</td>
			</tr>
		</table>
		<div style="height: 20px;"></div>
		<div id="map" class="map" style="width: 55%; height: 400px;"></div>
		
		<h2>이용후기 작성</h2>
		<table class="ui celled table">
		<form action="addReview" method="post">
			<tr>
				<td id="star_grade"><a href="#1" class="a.off">★</a> <a
					href="#2" class="a.off">★</a> <a href="#3" class="a.off">★</a> <a
					href="#4" class="a.off">★</a> <a href="#5" class="a.off">★</a><span
					id="target">Total : </span><br/>
					<textarea id="content" name="content" cols=60 rows=3 placeholder="시설을 평가해주세요"></textarea><br/>
					<input type="hidden" id="facilityNo" name="facilityNo" value="${facInfo.facilityNo}">
					<input type="hidden" id="facilityName" name="facilityName" value="${facInfo.facilityName}">
					<input type="hidden" id="u_no" name="u_no" value="${sessionScope.u_no}">
					<input type="hidden" id="u_id" name="u_id" value="${sessionScope.u_id}">
					<input type="hidden" id="score" name="score" value="">
					<input type="submit" class="btn btn-primary" value="작성">
<!-- 					<div id="review_btn" style="background-color: #ddd; cursor: pointer;">등록</div> -->
				</td>
			</tr>
		</form>
			<tr>
				<td>
					<div>
						<div class="doc-review review-listing">
							<ul class="comments-list">
								<c:if test="${empty review}">
									<div class="card text-center">
										<p style="margin: 10px; padding: 10px;">이 시설에 남겨진 후기가 없습니다.</p>
									</div>
								</c:if>
								<c:forEach var="review" items="${review}">
									<!-- Comment List -->
									<li>
										<div class="comment">
											<!-- 									<img class="avatar avatar-sm rounded-circle" alt="User Image" -->
											<%-- 										src="${path}/resources/patient/profileImg/${review.patientDTO.p_photo}"> --%>
											<div class="comment-body"
												style="width: -webkit-fill-available;">
												<div class="meta-data">
													<span class="comment-author">${review.u_id}</span> 
													<span class="comment-date">${review.rdate}</span>
													<div class="review-count rating">
														<c:forEach begin="0" end="4" step="1" varStatus="i">
															<c:choose>
																<c:when test="${review.score > i.index}">
																	<i class="fas fa-star filled"></i>
																</c:when>
																<c:otherwise>
																	<i class="fas fa-star"></i>
																	</c:otherwise>
															</c:choose>
														</c:forEach>
													</div>
												</div>
												<p class="comment-content">${review.content}</p>
											</div>
										</div>
									</li>
									<!-- /Comment List -->
								</c:forEach>
							</ul>

							<!-- Show All -->
							<!-- <div class="all-feedback text-center">
										<a href="#" class="btn btn-primary btn-sm">
											Show all feedback <strong>(167)</strong>
										</a>
									</div> -->
							<!-- /Show All -->

						</div>

					</div>
				</td>
		</table>

<!-- 				<h1>별점 jQuery예제</h1> -->
<!-- 				<h2>별점 입력 예제</h2> -->
<!-- 				<table class="ui celled table"> -->
<!-- 					<tr> -->
<!-- 						<td>내용:</td> -->
<!-- 						<td><input type="text" id="content" name="content"></td> -->
<!-- 					</tr> -->
<!-- 					<tr> -->
<!-- 						<td id="star_grade"><a href="#1" class="a.off">★</a> <a -->
<!-- 							href="#2" class="a.off">★</a> <a href="#3" class="a.off">★</a> <a -->
<!-- 							href="#4" class="a.off">★</a> <a href="#5" class="a.off">★</a> <span -->
<!-- 							id="target">Total : </span> -->
<!-- 								<input type="hidden" id="u_no" name="u_no" value=2> -->
<!-- 							</td> -->

<!-- 					</tr> -->
<!-- 					<tr> -->
<!-- 						<td><div id="review_btn" -->
<!-- 								style="background-color: #ddd; cursor: pointer;">save</div> -->
<!-- 					</tr> -->
<!-- 				</table> -->


		<!-- 		<h2>별점 출력예제</h2> -->
		<!-- 		<div id="star_result" class="ui celled table"> -->

		<!-- 		<table> -->
		<!-- 		<tr><td id ="star_total"></td><td id="msg"></td> -->
		<!-- 		</tr> -->
		<!-- 		</table> -->

		<%-- 			<c:forEach var="e" begin="1" end="5" step="1"> --%>
		<%-- 				<c:choose> --%>
		<%-- 					<c:when test="${e <= sn/2 }"> --%>
		<!-- 						<a href="#" class="on">★</a> -->
		<%-- 					</c:when> --%>
		<%-- 					<c:otherwise> --%>
		<!-- 						<a href="#" class="off">★</a> -->
		<%-- 					</c:otherwise> --%>
		<%-- 				</c:choose> --%>

		<%-- 			</c:forEach> --%>
		<!-- 		</div> -->

		<div class="button_div">
			<p>
				<a href="communityReservation?facilityNo=${facInfo.facilityNo}"
					class="btn btn-primary">예약</a>
			</p>
		</div>
	</div>
</div>


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

<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=8f2c650719bcaf5ef8ed66f3b6f99a2a"></script>
<script>
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div  
	mapOption = {
		center : new kakao.maps.LatLng(${facInfo.latitude}, ${facInfo.longitude}), // 지도의 중심좌표
		level : 5
	// 지도의 확대 레벨
	};

	var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

	// 마커를 표시할 위치와 내용을 가지고 있는 객체 배열입니다 
	var positions = [ {
		content : '<div>${facInfo.facilityName}</div>',
		latlng : new kakao.maps.LatLng(${facInfo.latitude}, ${facInfo.longitude})
	} ];

	for (var i = 0; i < positions.length; i++) {
		// 마커를 생성합니다
		var marker = new kakao.maps.Marker({
			map : map, // 마커를 표시할 지도
			position : positions[i].latlng
		// 마커의 위치
		});

		// 마커에 표시할 인포윈도우를 생성합니다 
		var infowindow = new kakao.maps.InfoWindow({
			content : positions[i].content
		// 인포윈도우에 표시할 내용
		});

		// 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
		// 이벤트 리스너로는 클로저를 만들어 등록합니다 
		// for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
		kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(
				map, marker, infowindow));
		kakao.maps.event.addListener(marker, 'mouseout',
				makeOutListener(infowindow));
	}

	// 인포윈도우를 표시하는 클로저를 만드는 함수입니다 
	function makeOverListener(map, marker, infowindow) {
		return function() {
			infowindow.open(map, marker);
		};
	}

	// 인포윈도우를 닫는 클로저를 만드는 함수입니다 
	function makeOutListener(infowindow) {
		return function() {
			infowindow.close();
		};
	}
</script>
<script>
$(function() {

	var total = 1;
	$('#star_grade a').click(function() {
		console.log($(this).attr("href"))
		console.log($(this).attr("class"))

		if ($(this).attr("href") === "#1") {
			total = 1;
		} else if ($(this).attr("href") === "#2") {
			total = 2;
		} else if ($(this).attr("href") === "#3") {
			total = 3;
		} else if ($(this).attr("href") === "#4") {
			total = 4;
		} else if ($(this).attr("href") === "#5") {
			total = 5;
		} else {

		}

		console.log("total :" + total);
		$('#target').html("Total : " + total);
		$("#score").val(total);
		$(this).parent().children("a").removeClass("on"); /* 별점의 on 클래스 전부 제거 */
		$(this).addClass("on").prevAll("a").addClass("on"); /* 클릭한 별과, 그 앞 까지 별점에 on 클래스 추가 */
		return false;
	});

// 	var result;
// 	var facilityNo = $("#facilityNo").val();
// 	var facilityName = $("#facilityName").val();
// 	var u_no = $("#u_no").val();
// 	var u_id = $("#u_id").val();
// 	var content = $("#content").val();
// 	var score = total;
	
	
// 	$("#review_btn").on(
// 		'click',
// 		function() {
// 			var facilityNo = $("#facilityNo").val();
// 			var facilityName = $("#facilityName").val();
// 			var u_no = $("#u_no").val();
// 			var u_id = $("#u_id").val();
// 			var content = $("#content").val();

// 			$.ajax({
// 				url : "addReview",
// 				type : "POST",
// 				contentType : "application/json; charset=utf-8",
// 				data : JSON.stringify({
// 					facilityNo : facilityNo,
// 					facilityName : facilityName,
// 					u_no : u_no,
// 					u_id : u_id,
// 					content : content,
// 					score : total,
// 				}),

// 				success : function(data) {
// 					console.log(facilityNo);
// 					console.log(facilityName);
// 					console.log(u_no);
// 					console.log(u_id);
// 					console.log(content);
// 					console.log(total);
				
// 					$('#star_total').html(total);
// 					$('#msg').html("/"+ content);			
// 				},
// 				error : function() {
// 					alert("err");
// 				}
// 			});
// 		})

});
</script>