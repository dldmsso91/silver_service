<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@800&display=swap" rel="stylesheet">
<style type="text/css">

body{
	font-family: 'Nanum Gothic', sans-serif;
}
.header{
	
	background: #0062b1;
	width: 100%;
	height: 175px;
	position: relative;
}
.body_contents{
	background: #fbf7ec;
	width: 86%;
	margin: 0 auto;
	height: 1050px;
	position: relative;
	top: 50px;

}
.page{
	background: white;
	width: 92%;
	height: 90%;
	margin: 0 auto;
	text-align: center;
	position: relative;
	top: 50px;
}

.service{

	width: 80%;
	margin: 0 auto;

}

.bar h1{
	position: relative;
	top: 15px;
	font-size: 50px;
	color: #4a4a4a;
}

.select{
	margin: 0 auto;
	width: 75%;
	text-align: center;
	height: 82px;
	position: relative;
	top: 22px;
	border: 1px solid #cecece;
}

.select div{line-height: 88px;}
.select div select{
	width: 160px;
	height: 47px;
	font-size: 23px;
	text-align: center;
	color: #666;
	border-radius: 5px;
	border: 1px solid gray;
	margin-right: 5px;
}
.select div input[type=text]{
	width: 466px;
	height: 45px;
	font-size: 23px;
	text-align: center;
	color: #666;
	border-radius: 10px;
	border: 1px solid gray;
}
.select div input[type=button]{
	width: 100px;
	height: 45px;
	font-size: 23px;
	text-align: center;
	border-radius: 10px;
	background: #797979;
	color: white;
	border: 0px;
	margin-left: 5px;
}

.bar > .on{
	background: #0d79c2;
	width: 215px;
	display: inline-block;
	height: 55px;
	border-radius: 5px;
	color: white;
	font-size: 30px;
	text-align: center;
	position: relative;
	top: 45px;
	margin: 2px;
	line-height: 54px; 
}
.bar > .close{
	background: #eee;
	width: 215px;
	display: inline-block;
	height: 55px;
	border-radius: 5px;
	color: #5e5e5e;
	font-size: 30px;
	text-align: center;
	position: relative;
	top: 45px;
	margin: 2px;
	border: 1px solid gray;
	line-height: 54px;
}
.box{
    width: 80%;
    margin: 0 auto;
    position: relative;
    top: 26px;
}

.box div{
	background: #797979;
	width: 289px;
	display: inline-block;
	height: 178px;
	border-radius: 4px;
	color: white;
	font-size: 27px;
	text-align: center;
	position: relative;
	top: 28px;
	margin: 3px;
	margin-top: 6px;
	overflow: hidden;
}

.box strong{
	display: block;

}


.box span{
	font-size: 18px;

}

.paging{    

	position: relative;
	top: 75px;
	width: 50%;
	height: 48px;
	margin: 0 auto;
}

.paging > .btn{ 
	background: white;
	margin-right: 24px;
	margin-left: 24px;
}
.paging > .btn img{ 

	width: 95%;
}


.paging a{
	width: 70%;
	margin: 0 auto;
	background: #0d79c2;
	width: 30px;
	display: inline-block;
	height: 30px;
	color: white;
	font-size: 25px;
	text-decoration: none;
}


</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<div id="header" class="header">
	test

</div>

<div id="body_contents" class="body_contents">
	<div id="page" class="page">
		<div  id="service" class="service">
			<div id="bar" class="bar">
				<h1>이은내님의 정책서비스입니다</h1>
				<div id="select" class="select">
					<div>
						<select>
							<option>전체검색</option>
						</select>
						<input type="text" value="여기에 입력하세요">
						<input type="button" value="검색">
					</div>
				</div>
				<div id="" class="on">취업지원</div>
				<div id="" class="close">창업지원</div>
				<div id="" class="close">주거/금융</div>
				<div id="" class="close">생활복지</div>
			</div>
			<div id="box" class="box">
				<div>
					<strong>취업성공패키지</strong>
					<span>단계별로 차근차근 취업에 성공하자!</span>
				</div>
				<div>
					<strong>취업성공패키지가무엇인가하오</strong>
					<span>단계별로 차근차근 취업에 성공하자!</span>
				</div>
				<div>
					<strong>취업성공패키지</strong>
					<span>단계별로 차근차근 취업에 성공하자!</span>
				</div>
				<div>
					<strong>취업성공패키지</strong>
					<span>단계별로 차근차근 취업에 성공하자!</span>
				</div>
				<div>
					<strong>취업성공패키지</strong>
					<span>단계별로 차근차근 취업에 성공하자!</span>
				</div>
				<div>
					<strong>취업성공패키지</strong>
					<span>단계별로 차근차근 취업에 성공하자!</span>
				</div>
							<div>
					<strong>취업성공패키지</strong>
					<span>단계별로 차근차근 취업에 성공하자!</span>
				</div>
				<div>
					<strong>취업성공패키지</strong>
					<span>단계별로 차근차근 취업에 성공하자!</span>
				</div>
							<div>
					<strong>취업성공패키지</strong>
					<span>단계별로 차근차근 취업에 성공하자!</span>
				</div>
	
	
			</div>
		</div>
		<div id="paging" class="paging">
			<a href="#" id="btn" class="btn"><img src="./resources/img/뒤로-48.png"></a>
			<a href="#">1</a>
			<a href="#">2</a>
			<a href="#" id="btn" class="btn"><img src="./resources/img/앞으로-48.png"></a>
		</div>
	</div>
</div>
</body>
</html>