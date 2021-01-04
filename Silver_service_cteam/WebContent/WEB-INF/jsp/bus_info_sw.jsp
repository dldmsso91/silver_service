<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<link rel="stylesheet" type="text/css"
	href="<c:url value='resources/css/ui.css'/>" />

<!-- jQuery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<!-- kakao Map API -->
<script type="text/javascript"
	src="http://dapi.kakao.com/v2/maps/sdk.js?appkey=2191486fc6b30c04214865e41c7b313e"></script>
<script src="<c:url value='/resources/js/common.js'/>" charset="utf-8"></script>
<title>버스 노선</title>
<script src="https://code.jquery.com/jquery-3.4.1.js" integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU=" crossorigin="anonymous">

</script>

</head>
<body>
<form id="commonForm" name="commonForm"></form>
	<!-- 버스 매뉴 -->
	<div id="gnb" class="gnb">
		<ul>
			<li class="gnb_menu" id="bus_main"><a class=""
				href="<c:url value='/bus_main'/>"> 
				<img src="resources/images/node_icon.png" alt="" class="gnb_icon">
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

	<!--                 -->

<div id="body" >
        <div id="searchMenu" class="leftBox">
            <div id="searchBox" class="leftBox" >
                <p class="margin0">버스 번호    <input type="text" value="${routeno}" id="routeno" style="width:100px; height:30px;"></p>
                <a  href="#this" id="sc_btn" class="btn" >찾기</a>
            </div>
        </div>
        <div id="resultBox" class="leftBox">
             
        </div>
         
        <div id="bodyBox">
            <div id="mapBox" class="mapBox_info">
            </div>
            <div id="infoBox">
                <table id="routeTable" class="routeTable" border="1">
                </table>
            </div>
        </div>
    </div>
    


<script src="<c:url value='resources/js/map.js'/>" charset="utf-8"></script>
		
		<script type="text/javascript">
        if(gfn_isNull($("#routeno").attr("value"))==false){
            fn_clickSearchButton();
            fn_clickRoute("${routeid}");
        }
         
        $("#bus_info").addClass("selected");
 
        $("document").ready(function(){
            $("#sc_btn").on("click",function(e){
                e.preventDefault();
                fn_clickSearchButton();
                 if($("#routeno").val() == ""){
                    alert("버스번호를 입력해주세요");
                    $("#routeno").focus();
                    return false;
                  } 
            })
            $("#routeno").keyup(function(e){
                if(e.keyCode==13){//엔터키 처리
                    fn_clickSearchButton();
                }
            })
        });

        //노선 정보 
       function fn_clickSearchButton(){
            $("#bodyBox").removeClass("none");
 
            $("#resultBox").children().remove();
            /*
            이 부분에서 노선 번호를 서버로 보내주고 서버에서는 데이터베이스를 통해 정류장 정보를 가져와 ajax로 리턴해준다.
            보내는 데이터 : routeNo
            받는 데이터 : route_Info의 데이터 
            */
            $.ajax({
                dataType:"json",
                contentType:"application/json",
                url: "routeList",
                type:"POST",
                data:JSON.stringify({ROUTENO:$("#routeno").val()}),
                success:function(result){
                    for(var i=0; i<result["list"].length;i++){
                        var map = result["list"][i];
                        var str = "<a href='#this' routeid='"+map["ROUTEID"]+"' name='route"+i+"' id='route"+i+"' class='result sc_node_result'>"+map["ROUTENO"]+"<span class='routeSpan'>("+map["STARTNODENM"]+"~"+map["ENDNODENM"]+")</span></a>";
                        $("#resultBox").append(str);
                    }
 
                    $("a[name^=route]").on("click",function(e){
                        e.preventDefault();
                        fn_clickRoute($(this).attr("routeid"));
                    })
                },
                error:function(){
                    alert("노선 정보를 불러올 수 없습니다.");
                }
            })
        }
 
        function fn_clickRoute(obj){
            $("#routeTable").children().remove();
            $("#routeTable").siblings().remove();
            //마커들을 지워줍니다.
            setMarkers(null);
             
            //라인 배열을 비워줍니다.
            linePath=[];
 
            /*
            이 부분에서 노선 ID를 서버로 보내주고 서버에서는 데이터베이스를 통해 정류장 정보를 가져와 ajax로 리턴해준다.
            보내는 데이터 : routeId
            받는 데이터 : route_Info의 데이터 
            */
            $.ajax({
                dataType:"json",
                type:"POST",
                contentType:"application/json",
                data:JSON.stringify({ROUTEID: obj }),
                url:"routeInfo",
                success:function(result){
                    var map=result["map"];
                    if(map["STARTVEHICLETIME"]==null){
                        map["STARTVEHICLETIME"]="xxxx";
                        map["ENDVEHICLETIME"]="xxxx";
                    }
                    var str = "<tbody><tr><th>노선번호</th><td colspan='3'>"+map["ROUTENO"]
                    +"</td></tr><tr><th>기점</th><td class='nodename'>"+map["STARTNODENM"]+"</td>"
                    +"<th>첫차시간</th><td class='vehicletime'>"+map["STARTVEHICLETIME"][0]+map["STARTVEHICLETIME"][1]+":"+map["STARTVEHICLETIME"][2]+map["STARTVEHICLETIME"][3]+
                    "</td></tr><tr><th>종점</th><td class='nodename'>"+map["ENDNODENM"]+
                    "</td><th>막차시간</th><td class='vehicletime'>"+map["ENDVEHICLETIME"][0]+map["ENDVEHICLETIME"][1]+":"+map["ENDVEHICLETIME"][2]+map["ENDVEHICLETIME"][3]+"</td></tr></tbody>";
                    $("#routeTable").before("<p>노선 정보</p>");
                    $("#routeTable").append(str);
                    $("#routeTable").after("<hr/><p>노선 경로</p><span>(정류장 이름을 클릭하면 해당 정류소 위치로 이동)</span><ul id='routePath'></ul>");
                     
                    var path=result["path"];
                    var direction="right";
                    for(var i=0,count=0;i<path.length;i++,count++){
                         
                        var str ="<li class='direction_li li_"+direction+"'><span class='topline_span'></span>";
                        if(count==4&&i!=(path.length-1)){
                            str+="<span class='rightline_span'></span>";
                        }else if(count==9&&i!=(path.length-1)){
                            str+="<span class='leftline_span'></span>";
                        }
                        if(i==(path.length-1)){
                            direction="arrive";
                        }
                        str+="<img class='direction_img' src='resources/images/direction_"+direction+".png'/><span id='path"+i+"' nodeid="+path[i]["NODEID"]+" name='nodeinfo"+i+"' lat='"+path[i]["LAT"]+"' lng='"+path[i]["LNG"]+"' class='direction_nodename'>"+path[i]["NODENAME"]+"</span></li>";
                        if(count==4){
                            direction="left";
                        }else if(count==9){
                            direction="right";
                            count=-1;//카운트값이 다시 0이 되어야하는데 for문의 증가문으로 더해지기 때문에 -1을 해줌으로써 for문이 다시 실행되면 0이 된다.
                        }//클래스명 변경 혹은 이미지 변경을 위하여 디렉션 변경
                        $("#routePath").append(str);
 
                        //정류소들을 전부 마커에 표기 해줍니다.
                        fn_nodeMarkerMaker($("#path"+i));
 
                        //객체의 값을 라인 배열에 넣어줍니다.
                        linePath.push(new kakao.maps.LatLng($("#path"+i).attr("lat"), $("#path"+i).attr("lng")));
 
                        $("li[class^=direction]").on("click",function(e){
                            e.preventDefault();
                            fn_clickPath($(this).children("span[name^=nodeinfo]"));
                             
                        })
                         
                         
                    }
                    //라인 메이커를 지도에 표시하는 함수입니다.
                    fn_nodeLineMaker();
                     
 
                },
                error:function(request,status,error){
                	alert("code = "+ request.status + " message = " + request.responseText + " error = " + error); // 실패 시 처리
                    alert("노선 경로를 불러올 수 없습니다.");
                }
            })
        }
 
         
        function fn_clickOverlay(){
        	
            var obj = $(".markerSelected");
            var comSubmit = new ComSubmit();
            comSubmit.addParam("nodeid",obj.attr("nodeid"));
            comSubmit.addParam("lat",obj.attr("lat"));
            comSubmit.addParam("lng",obj.attr("lng"));
            comSubmit.addParam("nodename",obj.html());
            comSubmit.setUrl("<c:url value='/bus_main'/>");
            comSubmit.submit();
        }
 
    </script>


		
		
</body>
</html>