<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- MAIN -->



<div id="test" class="slide-item overlay"></div>




<div class="site-section">
	<div class="container">
		<h1 style="margin-bottom: 50px; text-align: center;">의료복지시설 정보</h1>
		<div class="row justify-content-between">
			<div class="col-lg-7">
				<div class="section-heading">
					<div id="map" style="width: 100%; height: 600px;"></div>
				</div>
			</div>
			<div class="col-lg-5">

				<section class="panel no-b">
					<div class="panel-heading no-b">
						<h5>추천 의료복지시설 목록</h5>
					</div>

					<div class="panel-body">

						<table class="table no-m">
							<thead>
								<tr>
									<th>시설명</th>
									<th>주소</th>
									<th>전화번호</th>
									<th nowrap>만족도</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${medicalRecommendList}" var="medical">
									<tr>
										<td nowrap><a
											href="welfareFacilityDetail?facilityNo=${medical.facilityNo}">${medical.facilityName}</a></td>
										<td>${medical.address}</td>
										<td nowrap>${medical.telnumber}</td>
										<td>
											<div class="progress progress-sm no-m">
												<div class="progress-bar progress-bar-success"
													role="progressbar" aria-valuenow="${medical.serviceScore}" aria-valuemin="0"
													aria-valuemax="100" style="width: ${medical.serviceScore}%">
													<span class="sr-only">${medical.serviceScore}% Complete (success)</span>
												</div>
											</div>
										</td>
									</tr>
								</c:forEach>

							</tbody>
						</table>
					</div>
				</section>
			</div>

			
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
			center : new kakao.maps.LatLng(37.5935973, 127.02629), // 지도의 중심좌표
			level : 6
		// 지도의 확대 레벨
		};
		
		var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
		
		

		var positions = new Array();
		<c:forEach items="${medicalList}" var="medical">
			positions.push({
					content : '<div>${medical.facilityName}</div>',
					latlng : new kakao.maps.LatLng("${medical.latitude}", "${medical.longitude}")});
		</c:forEach>
		
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

		// HTML5의 geolocation으로 사용할 수 있는지 확인합니다 
		if (navigator.geolocation) {

			// GeoLocation을 이용해서 접속 위치를 얻어옵니다
			navigator.geolocation.getCurrentPosition(function(position) {

				var lat = position.coords.latitude, // 위도
				lon = position.coords.longitude; // 경도

				var locPosition = new kakao.maps.LatLng(lat, lon), // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다
				message = '<div style="padding:5px;">여기에 계신가요?!</div>'; // 인포윈도우에 표시될 내용입니다

				// 마커와 인포윈도우를 표시합니다
				displayMarker(locPosition, message);

			});

		} else { // HTML5의 GeoLocation을 사용할 수 없을때 마커 표시 위치와 인포윈도우 내용을 설정합니다

			var locPosition = new kakao.maps.LatLng(33.450701, 126.570667), message = 'geolocation을 사용할수 없어요..'

			displayMarker(locPosition, message);
		}

		// 지도에 마커와 인포윈도우를 표시하는 함수입니다
		function displayMarker(locPosition, message) {

			// 마커를 생성합니다
			var marker = new kakao.maps.Marker({
				map : map,
				position : locPosition
			});

			var iwContent = message, // 인포윈도우에 표시할 내용
			iwRemoveable = true;

			// 인포윈도우를 생성합니다
			var infowindow = new kakao.maps.InfoWindow({
				content : iwContent,
				removable : iwRemoveable
			});

			// 인포윈도우를 마커위에 표시합니다 
			infowindow.open(map, marker);

			// 지도 중심좌표를 접속위치로 변경합니다
			map.setCenter(locPosition);
		}

		var bounds = map.getBounds();
		var swLatLng = bounds.getSouthWest();
		var swLat = swLatLng.getLat();
		var swLng = swLatLng.getLng();
		var neLatLng = bounds.getNorthEast();
		var neLat = neLatLng.getLat();
		var neLng = neLatLng.getLng();

// 		alert(swLat);
// 		alert(swLng);
// 		alert(neLat);
// 		alert(neLng);
		
		
// 		$(function(){	
// 			$('#map').click(function(){
// 		        $.ajax({
// 		        	type:'post',
// 		        	url : 'getMedicalList',
// 		        	data : "swLat="+swLat+"swLng="+swLng+"neLat"+neLat+"neLng"+neLng,
// 		        	success : function(resultData){
// 		        		positions = new Array();
// 		        		for(var item in resultData){
// 		        			positions.push({
// 		    					content : '<div>${medical.facilityName}</div>',
// 		    					latlng : new kakao.maps.LatLng("${medical.latitude}", "${medical.longitude}")});
// 							alert(item.getLongitude())
// 				        }
// 		        	},
// 		        	error : function(err){
// 		        		alert(err);
// 		        	}
// 		        });
		       
// 			})
// 		})
			
	</script>
</body>
</html>