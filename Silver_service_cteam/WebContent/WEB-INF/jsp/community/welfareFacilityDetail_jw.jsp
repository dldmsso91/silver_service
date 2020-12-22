<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<link rel="stylesheet" href="resources/css/welfareFacilityDetail.css">
<!-- MAIN -->

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
				<td>소재지</td>
				<td>${facInfo.cityloc}</td>
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
				<td>만족도 점수</td>
				<td>${facInfo.serviceScore}</td>
			</tr>
			<c:choose>
				<c:when test="${facInfo.typeName==\"노인의료복지시설\"}">
					<tr>
						<td>정원</td>
						<td>${facInfo.medicalDetail.peopleLimit}</td>
					</tr>
				</c:when>
			</c:choose>
			<c:choose>
				<c:when test="${facInfo.typeName==\"노인의료복지시설\"}">
					<tr>
						<td>현재원</td>
						<td>${facInfo.medicalDetail.peopleNumber}</td>
					</tr>
				</c:when>
			</c:choose>
			<c:choose>
				<c:when test="${facInfo.typeName==\"재가노인복지시설\"}">
					<tr>
						<td>제공 서비스</td>
						<td>${facInfo.silverhallDetail.serviceType}</td>
					</tr>
				</c:when>
			</c:choose>
		</table>

		<div id="map" class="map" style="width: 55%; height: 400px;"></div>


		<div class="button_div">
			<p>
				<a href="communityReservation?facilityNo=${facInfo.facilityNo}"
					class="btn btn-primary">예약</a>
			</p>
			<p>
				<a href="#" class="btn btn-primary" id="searchRoad">길찾기</a>
			</p>
			<!-- 			       	<input name="write" type="submit" value="작성하기"> -->
			<!-- 	               	<input name="cancel"type="reset" value="취소하기"> -->
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

</body>

</html>