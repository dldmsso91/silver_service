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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>

<!-- kakao Map API -->
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=269a72416406e08431df9d8c16aa3a48"></script>

<title>아직 안됨</title>
<script src="https://code.jquery.com/jquery-3.4.1.js" integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU=" crossorigin="anonymous">
</script>

</head>
<body>
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


	<!--                 -->

<div id="body" >
        <div id="searchMenu" class="leftBox">
            <div id="searchBox" class="leftBox" >
                <p class="margin0">버스 번호    <input type="text" value="5" id="routeno" style="width:100px; height:30px;"></p>
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
    
<script src="<c:url value='/resources/js/common.js'/>" charset="utf-8"></script>
<form id="commonForm" name="commonForm"></form>
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
            })
            $("#routeno").keyup(function(e){
                if(e.keyCode==13){//엔터키 처리
                    fn_clickSearchButton();
                }
            })
        });
 
        function fn_clickSearchButton(){
            $("#bodyBox").removeClass("none");
 
            $("#resultBox").children().remove();
            
            $.ajax({
            	url: "routeList",
            	type:"POST",
                dataType:"json",
                contentType:"application/json",
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
                       
                        });
                    $("a[name^=route]").trigger("click");

                },
                error:function(request,status,error){
                	alert("code = "+ request.status + " message = " + request.responseText + " error = " + error); // 실패 시 처리
                    alert("노선 정보를 찾을 수 없습니다.");
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

                     +"</td></tr><tr><th>기점</th><td class='nodename'>"
                     +map["STARTNODENM"]+"</td>"

                     +"<th>첫차시간</th><td class='vehicletime'>"
                     +map["STARTVEHICLETIME"][0]+map["STARTVEHICLETIME"][1]+":"+
                     map["STARTVEHICLETIME"][2]+map["STARTVEHICLETIME"][3]+

                    "</td></tr><tr><th>종점</th><td class='nodename'>"+map["ENDNODENM"]+

                    "</td><th>막차시간</th><td class='vehicletime'>"+map["ENDVEHICLETIME"][0]+
                    map["ENDVEHICLETIME"][1]+":"+map["ENDVEHICLETIME"][2]+map["ENDVEHICLETIME"][3]+
                    "</td></tr></tbody>";

                    $("#routeTable").before("<p>노선 정보(아직 데이터가 안들어가 고정되어있음)</p>");
               
                    $("#routeTable").append(str);
                    $("#routeTable").after("<hr/><p>노선 경로</p>");
                     
                    <!-- 노선 처리 해야되는 부분 (진행 중)-->


                    <!-- 노선 처리 해야되는 부분 end -->
                },
                error:function(){
                    alert("노선 불러올 수 없습니다.");
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
            comSubmit.setUrl("<c:url value='/bus_main_sw'/>");
            comSubmit.submit();
        }
 
    </script>


		
		
</body>
</html>