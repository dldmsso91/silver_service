<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">


<title>chart2.html</title>

<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- 너비는 디바이스 장치에 맞춰라 화면크기는 2배가 아니라 원래 화면 그대로 설정-->

<link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css" />




</head>
<body>

<div id="page1" data-role="page">

<div id="header3" data-role="header">

<div data-role="navbar">

<ul>

<li><a href="/" data-transition="slideup">Home</a></li>

<li><a href="#page2" data-transition="slideup">Address</a></li>

<li><a href="survey/" >survey</a></li>

<li><a href="survey/chart2" class="ui-btn-active">Chart</a></li>

</ul>

</div>

</div>

<div data-role="main" class="ui-content">

<h2>

<input type="button" value="Ajax" id="btn1">

</h2>

<div>

<div id="chart2"></div>

</div>

</div>

<div data-role="footer">

<h2>Footer content1</h2>

</div>

</div>





<div id="page2" data-role="page">

<div id="header2" data-role="header">

<div data-role="navbar">

<ul>

<li><a href="#page1" data-transition="slideup">Home</a></li>
<li><a href="#page2" data-transition="slideup">Address</a></li>
<li><a href="survey/show_result2?survey_idx=2" >survey</a></li>
<li><a href="address/chart" class="ui-btn ui-shadow">Chart</a></li>

</ul>

</div>

</div>

<div data-role="main" class="ui-content">

<h1>두번째 페이지</h1>

<h2>

<input type="button" value="두번째 페이지" id="btn2">

</h2>

<div>

<div id="chart1"></div>

</div>

</div>

<div data-role="footer">

<h2>Footer content2</h2>

</div>

</div>






<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
<script src="https://d3js.org/d3.v3.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/c3/0.4.11/c3.min.js"></script>
<script>

$(function(){
$('#btn1').click(function(){
$.ajaxPrefilter('json',function(options,orig,jqXHR){
return 'jsonp';
});
$.ajax({//jsonp방식의 ajaax설정
url : 'http://192.168.56.1:80/spring_django_1026/jsonpTest3',
type : 'GET',
dataType : 'jsonp',
jsonp : 'callback',
success : function(result){
makePieChart(result);
},
error : function(result){
console.log("err>>" + $(result).text());
}
});
function makePieChart(jsonData){ //콜백함수 호출
var datas = new Array(); //자바스크립트 배열생성
for(var key in jsonData){ //1.읽어들인 jsonData에서 key값을 하나씩 반복해서
console.log(key + ":" + jsonData[key])
datas.push(jsonData[key]); //2.배열에 저장
}
console.log("Datas : " + datas);
var chart = c3.generate({
bindto :'#chart2',
data : {
type :'donut',
columns : datas
},
donut :{
title:"붓꽃데이터"
}


});

}//function end

});


});


</script>





</body>
</html>