/**
 * 
 */
var mapContainer = document.getElementById('mapBox'), // 지도를 생성할 div 
mapOption = { 
    center: new kakao.maps.LatLng(37.4995667, 126.7749), // 지도의 중심좌표
    level: 3 // 지도의 확대레벨
};

var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다.

// 마커 객체를 가지고 있을 배열을 선언합니다.
var markers = [];
// 라인 값들을 가지고 있을 배열을 선언합니다. 선을 구성하는 좌표 배열입니다. 이 좌표들을 이어서 선을 표시합니다
var linePath = [];
// 선택한 정류장에 대한 이름을 알려주기 위한 오버레이 변수입니다.
var customOverlay = null; 

function fn_clickSetting(){
	var clickMarker=null;
	//노선 마커와 위치 클릭 마커
	
	var clickIcon = new kakao.maps.MarkerImage(
			"resources/images/bus_location.png",
			new kakao.maps.Size(32,32));
	
	//지도에 클릭 이벤트를 등록합니다
	// 지도를 클릭하면 마지막 파라미터로 넘어온 함수를 호출합니다
	daum.maps.event.addListener(map, 'click', function(mouseEvent) {        
	    
		if(clickMarker!=null){
			clickMarker.setMap(null);
		}
		
	    // 클릭한 위도, 경도 정보를 가져옵니다 
	    var latlng = mouseEvent.latLng;
	    
	    var resultDiv1 = document.getElementById('lat'); 
	    resultDiv1.value = Math.floor(latlng.getLat()*100000)/100000;
	    var resultDiv2 = document.getElementById('lng');
	    resultDiv2.value = Math.floor(latlng.getLng()*100000)/100000;
	    
	    clickMarker = new daum.maps.Marker({
	    	position: new daum.maps.LatLng(resultDiv1.value,resultDiv2.value),
	    	image:clickIcon,
	    	clickable:false
	    });
	    
	    
	    clickMarker.setMap(map);
	    
	});
}

//마커를 생성하고 지도 위에 표시하는 함수입니다
function fn_nodeMarkerMaker(obj){
	
	//다음 맵 API 마커 생성하기
	var markerPosition  = new kakao.maps.LatLng(obj.attr("lat"), obj.attr("lng")); 
	
	// 마커를 생성합니다
	var marker = new kakao.maps.Marker({
	    position: markerPosition,
	    clickable: true 
	});
	var iwContent = obj.attr("nodename") , // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
    iwRemoveable = true; // removeable 속성을 ture 로 설정하면 인포윈도우를 닫을 수 있는 x버튼이 표시됩니다

	// 인포윈도우를 생성합니다
		var infowindow = new kakao.maps.InfoWindow({
			content : iwContent,
			removable : iwRemoveable
			});

// 마커에 클릭이벤트를 등록합니다
kakao.maps.event.addListener(marker, 'click', function() {
      // 마커 위에 인포윈도우를 표시합니다
      infowindow.open(map, marker);  
});
	//마커를 지도 위에 표시되도록 세팅합니다.
	marker.setMap(map);

	
	
	//생성된 마커를 배열에 추가합니다.
	markers.push(marker);
	kakao.maps.event.addListener(marker,"click",function(e){
		if(obj.attr("id").slice(0,4)=="node"){
			
			//마커 클릭 이벤트를 선언해줍니다.
			fn_clickNode(obj);
				
			
		}else if(obj.attr("id").slice(0,4)=="path"){
			fn_clickPath(obj);
		}	
	});
	//------------------------자기 위치 ----------------------
	if (navigator.geolocation) {
	    
	    // GeoLocation을 이용해서 접속 위치를 얻어옵니다
	    navigator.geolocation.getCurrentPosition(function(position) {
	        
	        var lat = position.coords.latitude, // 위도
	            lon = position.coords.longitude; // 경도
	        
	        var locPosition = new kakao.maps.LatLng(lat, lon), // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다
	            message = '<div style="padding:5px;">my location </div>'; // 인포윈도우에 표시될 내용입니다
	        
	        // 마커와 인포윈도우를 표시합니다
	        displayMarker(locPosition, message);
	            
	      });
	    
	} else { // HTML5의 GeoLocation을 사용할 수 없을때 마커 표시 위치와 인포윈도우 내용을 설정합니다
	    
	    var locPosition = new kakao.maps.LatLng(lat, lng),    
	        message = 'geolocation을 사용할수 없어요..'
	        
	    displayMarker(locPosition, message);
	}

	// 지도에 마커와 인포윈도우를 표시하는 함수입니다
	function displayMarker(locPosition, message) {

	    // 마커를 생성합니다
	    var marker = new kakao.maps.Marker({  
	        map: map, 
	        position: locPosition
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
	
	
	
}

function fn_clickPath(obj){
	
	$("span[name^=nodeinfo]").removeClass("markerSelected");
	obj.addClass("markerSelected");
	//지도 중심을 변경합니다.
	map.setCenter(new kakao.maps.LatLng(obj.attr("lat"),obj.attr("lng")));
	
	fn_setOverlay(obj);

}

function fn_setOverlay(obj){
	
	if(customOverlay!=null){
		customOverlay.setMap(null);
	}
	
	customOverlay = new kakao.maps.CustomOverlay({
	    map: map,
	    clickable: false,
	    content: '<a href="#this" onclick="fn_clickOverlay();"><span class="customOverlay">'+obj.html()+'</span></a>',
	    position: new daum.maps.LatLng(obj.attr("lat"),obj.attr("lng")),
	    xAnchor: 0.5,
	    yAnchor: 3,
	    zIndex: 3
	});
	customOverlay.setMap(map);
}

//배열에 추가된 마커들을 지도에 표시하거나 삭제하는 함수입니다.
function setMarkers(map){
	for(var i=0; i<markers.length;i++){
		markers[i].setMap(map);
	}
}

