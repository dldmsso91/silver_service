var mapContainer = document.getElementById('mapBox'), // 지도를 생성할 div 
mapOption = { 
    center: new daum.maps.LatLng(37.34215, 127.11828), // 지도의 중심좌표
    level: 3 // 지도의 확대레벨
};

var map = new daum.maps.Map(mapContainer, mapOption); // 지도를 생성합니다.


var markers = [];

var linePath = [];

var customOverlay = null; 

function fn_clickSetting(){
	var clickMarker=null;

	
	var clickIcon = new daum.maps.MarkerImage(
			"resources/images/location.png",
			new daum.maps.Size(32,32));
	
	
	daum.maps.event.addListener(map, 'click', function(mouseEvent) {        
	    
		if(clickMarker!=null){
			clickMarker.setMap(null);
		}
		
	  
		
		
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


function fn_nodeMarkerMaker(obj){
	
	
	var markerPosition  = new daum.maps.LatLng(obj.attr("lat"), obj.attr("lng")); 
	

	var marker = new daum.maps.Marker({
	    position: markerPosition,
	    clickable: true 
	});

	marker.setMap(map);


	markers.push(marker);
	daum.maps.event.addListener(marker,"click",function(e){
		if(obj.attr("id").slice(0,4)=="node"){

			fn_clickNode(obj);
				
			
		}else if(obj.attr("id").slice(0,4)=="path"){
			fn_clickPath(obj);
		}	
	});
	
}







