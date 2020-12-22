<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<!-- MAIN -->
<div id="test" class="slide-item overlay"></div>

<div class="site-section">
	<div class="container">
		<h1 style="margin-bottom: 50px; text-align: center;">커뮤니티 서비스</h1>
		<div class="row justify-content-between">
			<div class="col-lg-7">
				<div class="section-heading">
					<div id="map" style="width: 100%; height: 600px;"></div>
				</div>
			</div>
			<div class="col-lg-5">

				<div class="d-block custom-media algin-items-stretch">

					<div id="chatbox">
						<div id="friendslist">
							<div id="topmenu">
								<span class="friends"></span> <span class="chats"></span> <span
									class="history"></span>
							</div>

							<div id="friends">
								<div class="friend">
									<img
										src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/245657/1_copy.jpg" />
									<p>
										<strong>챗휴먼</strong> <span>chathuman@gmail.com</span>
									</p>
									<div class="status available"></div>
								</div>

								<div class="friend">
									<img
										src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/245657/2_copy.jpg" />
									<p>
										<strong>고장내는 기계</strong> <span>errormachine@gmail.com</span>
									</p>
									<div class="status away"></div>
								</div>

								<div class="friend">
									<img
										src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/245657/3_copy.jpg" />
									<p>
										<strong>지옥에서 온 악마</strong> <span>devilfromhell@gmail.com</span>
									</p>
									<div class="status inactive"></div>
								</div>

								<div class="friend">
									<img
										src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/245657/4_copy.jpg" />
									<p>
										<strong>금붕어</strong> <span>forgetperthreesecond@gmail.com</span>
									</p>
									<div class="status inactive"></div>
								</div>

								<div id="search">
									<input type="text" id="searchfield" value="Search contacts..." />
								</div>

							</div>

						</div>

						<div id="chatview" class="p1">
							<div id="profile">

								<div id="close">
									<div class="cy"></div>
									<div class="cx"></div>
								</div>

								<p>Miro Badev</p>
							</div>
							<div id="chat-messages">
								<label>Thursday 02</label>

								<div class="message">
									<img
										src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/245657/1_copy.jpg" />
									<div class="bubble">
										고통이 없으면 성취도 없다 근데 고통이 있다고해서 성취도 있는 것은 아니다.
										<div class="corner"></div>
									</div>
								</div>

								<div class="message right">
									<img
										src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/245657/2_copy.jpg" />
									<div class="bubble">
										위험을 감수하지 않으면 실패도 하지 않는다.
										<div class="corner"></div>
									</div>
								</div>

								<div class="message">
									<img
										src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/245657/1_copy.jpg" />
									<div class="bubble">
										남들이 알아주지 않더라도 너의 일을 묵묵히 하다보면 결국 남 좋은 일만 하게 된다.
										<div class="corner"></div>
									</div>
								</div>

								<div class="message right">
									<img
										src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/245657/2_copy.jpg" />
									<div class="bubble">
										열심히 일하다보면 언젠가 보상을 받기도 한다. 하지만 게으름을 피우면 당장 확실한 보상을 받는다.
										<div class="corner"></div>
									</div>
								</div>

								<div class="message">
									<img
										src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/245657/1_copy.jpg" />
									<div class="bubble">
										남들이 널 필요로 한다고 해서 그게 니가 중요한 사람이라는 뜻은 아니다.
										<div class="corner"></div>
									</div>
								</div>

							</div>

							<div id="sendmessage">
								<input type="text" value="Send message..." />
								<button id="send"></button>
							</div>

						</div>
					</div>




				</div>
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
		center : new kakao.maps.LatLng(37.4781144, 126.8784167), // 지도의 중심좌표
		level : 3
	// 지도의 확대 레벨
	};

	var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

	// 마커를 표시할 위치와 내용을 가지고 있는 객체 배열입니다 
	var positions = [ {
		content : '<div>고장내는 기계</div>',
		latlng : new kakao.maps.LatLng(37.478673, 126.8786544)
	}, {
		content : '<div>지옥에서온 악마</div>',
		latlng : new kakao.maps.LatLng(37.4804014, 126.883129)
	}, {
		content : '<div>금붕어</div>',
		latlng : new kakao.maps.LatLng(37.4781922, 126.8753113)
	}, {
		content : '<div>챗휴먼</div>',
		latlng : new kakao.maps.LatLng(37.4786133, 126.8784542)
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
		kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map,
				marker, infowindow));
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