<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype>
<html>
<head>
<!-- css  -->
<title>정류장 찾기</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>


<link rel="stylesheet" type="text/css" href="<c:url value='resources/css/ui.css'/>" />
<!-- jQuery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="<c:url value='/resources/js/common.js'/>" charset="utf-8"></script>
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>

<!-- kakao Map API -->
<script type="text/javascript"
	src="http://dapi.kakao.com/v2/maps/sdk.js?appkey=2191486fc6b30c04214865e41c7b313e"></script>


</head>
<body data-spy="scroll" data-target=".site-navbar-target"
	data-offset="300">





	<!-- MAIN -->
	<div id="test" class="slide-item overlay"></div>



	<!-- 버스 매뉴 -->
	<div id="gnb" class="gnb">
		<ul>
			<li class="gnb_menu" id="bus_main"><a class=""
				href="<c:url value='/bus_main'/>"> <img
					src="resources/images/node_icon.png" alt="" class="gnb_icon">
					정류장 찾기
			</a></li>

			<li class="gnb_menu" id="bus_info"><a class=""
				href="<c:url value='/bus_info'/>"> <img
					src="resources/images/bus_icon.png" alt="" class="gnb_icon">
					버스 노선
			</a></li>
			 <li class="gnb_menu" id="bus_admin"><a class=""
				href="<c:url value='/bus_admin'/>"> <img
					src="resources/images/bus_icon.png" alt="" class="gnb_icon">
					버스 데이터 저장(임시)
			</a></li> 
			<li class="gnb_menu" id="home"><a class=""
				href="<c:url value='/index'/>"> <img
					src="resources/images/home.png" alt="" class="gnb_icon"> 매인화면
			</a></li>


		</ul>
	</div>
<script type="text/javascript">
    $(document).ready(function(){
        $(".gnb_menu").on("click",function(e){
            $(".gnb_menu").removeClass("selected");
        })
    })
    </script>
	<div id="body">
		<div id="searchMenu" class="leftBox">
			<div id="searchBox" class="leftBox">
				<p class="margin0">
					<input type="hidden" id="lat" value="${lat }"
						style="width: 150px; height: 20px;">
				</p>
				<p class="margin0">
					<input type="hidden" id="lng" value="${lng }"
						style="width: 150px; height: 20px;">
				</p>
				
				<input type="hidden" value="${nodeid }" id="nodeidVal"> 
				<input type="hidden" value="${nodename }" id="nodenameVal"> 
				<input type="hidden" value="${lat }" id="latVal"> 
				<input type="hidden" value="${lng }" id="lngVal">

				
				<a href="#this" id="sc_btn" class="btn">버스정류장 찾기</a> 
				<a href="#this" id="location_btn" class="btn">자기 위치 찾기</a>
				
			</div>
		</div>
		<div id="resultBox" class="leftBox"></div>
	
		<div id="bodyBox">
			<div id="mapBox" class="mapBox"></div>
		</div>
	</div>
	<form id="commonForm" name="commonForm"></form>
	
	<script src="resources/js/map.js" charset="utf-8"></script>
	
<!--  ---------------------------------------------------------------------- -->

	<script type="text/javascript">
		$("#bus_main").addClass("selected");
		fn_clickSetting();

		$(document).ready(function() {

			//버스 정류장으로 이동
			$("#sc_btn").on("click", function(e) {
				e.preventDefault();
				fn_clickSearchButton();
				if($("#lng").val() == ""){ 
					alert("마우스로 위치를 지정해주세요"); 
					location.reload();
					return false ; 
					}
			})
			
			
			//자기 위치 찾기로 이동
			 $("#location_btn").on("click", function(e) {
				e.preventDefault();
				fn_location_btn();
			}) 
			$("a[name^='node']").on("click", function(e) {
				e.preventDefault();
				fn_clickNode($(this));
				
			})
		})

		//---------------------버스 정류장 찾기------------------------
		//버튼을 클릭 하였을 시 경도, 위도에 적혀 있는 주변의 정류소를 찾기 위한 함수
		function fn_clickSearchButton() {
			 if(customOverlay!=null){
				    customOverlay.setMap(null);
				   }
			//정류소 마커 부분들과 정류장 검색 결과들을 초기화
			setMarkers(null);
			$("#resultBox").children().remove();

			//경도 위도를 ajax를 통해 보낼 데이터에 추가 
			var data = {};
			data["LAT"] = $("#lat").val();
			data["LNG"] = $("#lng").val();

			//지도 중심을 변경
			map.setCenter(new kakao.maps.LatLng(data["LAT"], data["LNG"]));
			$.ajax({
						url : 'nodeList',
						dataType : 'json',
						type : 'POST',
						contentType : 'application/json; charset=UTF-8',
						data : JSON.stringify(data), //JSON으로 변형 후 보냄
						success : function(result) {

							//데이터를 받아오기가 성공하였을 경우 받아온 데이터 중 list에 저장되어 있는 정류소 정보를 결과박스에 추가해주고 정류소 정보를 통해 지도 위에 마커를 생성
							for (var i = 0; i < result["list"].length; i++) {

								var map = result["list"][i];

								var str = "<a href='#this' nodeid='"+map["NODEID"]+"'   lat='"+map["LAT"]+"'    lng='"+map["LNG"]+"'    name='node"+i+"'   id='node"+i+"' class='result sc_node_result'  nodename='"+map["NODENAME"] +"'>"
										+ map["NODENAME"] + "</a>";

								$("#resultBox").append(str);

								//kakao API marker 생성 함수()
								fn_nodeMarkerMaker($("a[name='node" + i + "']"));

							}

							$("a[name^='node']").on("click", function(e) {
								e.preventDefault();
								fn_clickNode($(this));
							})
						},

						//데이터를 받아오는게 실패시 나오는 메세지   
						error : function() {
							alert("버스정보를 불러올 수 없습니다");
						}
					});

		}
		//-------------------------------자기 위치 찾기--------------------------------------
		 function fn_location_btn(obj) {

			if (navigator.geolocation) {

				// GeoLocation을 이용해서 접속 위치를 얻어옵니다
				navigator.geolocation.getCurrentPosition(function(position) {

					var lat = position.coords.latitude, // 위도
					lon = position.coords.longitude; // 경도

					var locPosition = new kakao.maps.LatLng(lat, lon), // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다
					message = '<div style="padding:4px;">현재 자기 위치 </div>'; // 인포윈도우에 표시될 내용입니다

					// 마커와 인포윈도우를 표시합니다
					displayMarker(locPosition, message);

				});

			} else { // HTML5의 GeoLocation을 사용할 수 없을때 마커 표시 위치와 인포윈도우 내용을 설정합니다

				var locPosition = new kakao.maps.LatLng(lat, lng), message = 'geolocation을 사용할수 없어요..'

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
				iwRemoveable = false;

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

		//----------------------------------실시간 버스정보----------------------------------------
		function fn_clickNode(obj){
   setMarkers(null);
	 if(customOverlay!=null){
    customOverlay.setMap(null);
   }
    
   if($("a[name^='node']").hasClass("selected")){
    $("a[name^='node']").removeClass("selected");
    fn_clickSearchButton();
     
   }else{
    $("a[name^='node']").addClass("selected");
     
    fn_nodeRealTime(obj);
   }
  }
 
  function fn_nodeRealTime(obj){
   //버스 노선 페이지에서 검색된 경로의 정류장의 정보보기의 기능 활성화의 경우를 위한 변수들 초기화
   
   if($("#nodeidVal").val()!=null&&!($("#nodeidVal").hasClass("used"))){

	    var str = "<a href='#this' nodeid='"+$("#nodeidVal").val()+"' lat='"+$("#latVal").val()+"' lng='"+$("#lngVal").val()+"' name='node1' id='node1' class='result sc_node_result'nodename='"+map["NODENAME"] +"'>"+$("#nodenameVal").val()+"</a>";

	     $("#resultBox").append(str);

	     obj=$("#node1");   

	      $(obj).addClass("selected");

	      $("#nodeidVal").addClass("used");

	     }
   
   map.setCenter(new kakao.maps.LatLng(obj.attr("lat"),obj.attr("lng")));

   
   var divStr="<div id='routeBox' class='result'><div id='pageDiv'></div></div>";

    obj.siblings().remove(); 

   obj.parent().append(divStr);

   //선택한 정류장의 위치에 마커를 표시해줌
   fn_nodeMarkerMaker(obj);  

$.ajax({
	url:"nodeRealTime",
    type:"POST",
    dataType:"json",
    contentType:"application/json",
    data:JSON.stringify({NODEID:obj.attr("nodeid")},{ROUTENO:obj.attr("routeno")}),
    success:function(result){

         for(var i=0;i<result["list"].length;i++){

             var map=result["list"][i];

              var arrtime= Math.floor(map["ARRTIME"]/60);

               var str = "<a href='#this' routeno='"+map["ROUTENO"]+"' routeid='"+map["ROUTEID"]+"' name='route"+i+"' id='route"+i+"' class='result sc_real_route_result'>"+map["ROUTENO"]

               +"("+map["VEHICLETP"]+")<p>"+map["ARRPREV"]+"정류장 전("+arrtime+"분)</p></a>";     

                $("#routeBox").append(str);

                }      

        $("#routeBox").css("height", 52*result["list"].length);
    
         $("a[name^=route]").on("click",function(e){
             e.preventDefault();
             fn_routeInfo($(this));
         });
         
          },
    error:function(){
     alert("실시간 버스 정보를 불러올 수 없습니다.");
    } 
   })
       
  }


function fn_routeInfo(obj){
var comSubmit = new ComSubmit();
//alert("Test"+obj.attr("routeno"));
$('#routeno').val(obj.attr("routeno"));
comSubmit.addParam("routeno",obj.attr("routeno"));
comSubmit.addParam("routeid",obj.attr("routeid"));
comSubmit.setUrl("<c:url value='/bus_info'/>");
comSubmit.submit();
}
	</script>
	<!-- 메인 끝 -->




</body> 
</html>