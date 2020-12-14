<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
   <head>
<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">    

  <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;700&family=Playfair+Display:wght@400;700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="resources/fonts/icomoon/style.css">

  <link rel="stylesheet" href="resources/css/bootstrap.min.css">
  <link rel="stylesheet" href="resources/css/jquery-ui.css">
  <link rel="stylesheet" href="resources/css/owl.carousel.min.css">
  <link rel="stylesheet" href="resources/css/owl.theme.default.min.css">
  <link rel="stylesheet" href="resources/css/owl.theme.default.min.css">

  <link rel="stylesheet" href="resources/css/jquery.fancybox.min.css">

  <link rel="stylesheet" href="resources/css/bootstrap-datepicker.css">

  <link rel="stylesheet" href="resources/fonts/flaticon/font/flaticon.css">

  <link rel="stylesheet" href="resources/css/aos.css">
  <script src="//code.jquery.com/jquery-3.3.1.js"></script>
  <link rel="stylesheet" href="resources/css/style.css">
<<<<<<< HEAD
<script>
$(document).ready(function() {
  slide();
});


// 슬라이드 
function slide() {
  var wid = 0;
  var now_num = 0;
  var slide_length = 0;
  var auto = null;
  var $dotli = $('t>li');
  var $panel = $('.panel');
  var $panelLi = $panel.children('li');

  // 변수 초기화
  function init() {
    wid = $('.slide').width();
    now_num = $('t>li.on').index();
    slide_length = $dotli.length;
  }

  // 이벤트 묶음
  function slideEvent() {

    // 슬라이드 하단 dot버튼 클릭했을때
    $dotli.click(function() {
      now_num = $(this).index();
      slideMove();
    });

    // 이후 버튼 클릭했을때
    $('.next').click(function() {
      nextChkPlay();
    });

    // 이전 버튼 클릭했을때
    $('.prev').click(function() {
      prevChkPlay();
    });

    // 오토플레이
    autoPlay();

    // 오토플레이 멈춤
    autoPlayStop();

    // 오토플레이 재시작
    autoPlayRestart();

    // 화면크기 재설정 되었을때
    resize();
  }

  // 자동실행 멈춤
  function autoPlayStop() {
    $panelLi.mouseenter(function() {
      clearInterval(auto);
    });
  }


  // 자동실행 멈췄다가 재실행
  function autoPlayRestart() {
    $panelLi.mouseleave(function() {
      auto = setInterval(function() {
        nextChkPlay();
      }, 3000);
    });
  }

  // 이전 버튼 클릭시 조건 검사후 슬라이드 무브
  function prevChkPlay() {
    if (now_num == 0) {
      now_num = slide_length - 1;
    } else {
      now_num--;
    }
    slideMove();
  }

  // 이후 버튼 클릭시 조건 검사후 슬라이드 무브
  function nextChkPlay() {
    if (now_num == slide_length - 1) {
      now_num = 0;
    } else {
      now_num++;
    }
    slideMove();
  }

  // 슬라이드 무브
  function slideMove() {
    $panel.stop().animate({
      'margin-left': -wid * now_num
    });
    $dotli.removeClass('on');
    $dotli.eq(now_num).addClass('on');
  }

  // 화면크기 조정시 화면 재설정
  function resize() {
    $(window).resize(function() {
      init();
      $panel.css({
        'margin-left': -wid * now_num
      });
    });
  }
  init();
  slideEvent();
}
</script>
=======
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
 
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
 
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script>
>>>>>>> 14e2ca62decd1d776c1babade812541762ffebea

</script>

<<<<<<< HEAD
=======

>>>>>>> 14e2ca62decd1d776c1babade812541762ffebea
<style>
#wrap{
background-image: URL('resources/images/img_1_sq.jpg'); 
width: 450px;
margin: auto;
margin-top: 150px;
}
#space {
    height: 300px;
    width: 74%;
    margin-top: 117px;
}
<<<<<<< HEAD
.back{
background-image: URL('resources/images/img_1_sq.jpg'); 
margin: auto;
width:450%;
height;
}
.login_div {
    background: rgb(120 130 110 / 75%);
    border-radius: -10px;
    height: 35vh;
=======
.login_div {
    background: rgb(120 130 110 / 75%);
    border-radius: -10px;
    height: 75vh;
>>>>>>> 14e2ca62decd1d776c1babade812541762ffebea
    width: 100%;
    text-align: center;
    color: aliceblue;
}
.login_table{

    margin: 0 auto;
}
.login_table tr td{
   color: aliceblue;
<<<<<<< HEAD
    padding: 10;;
=======
   padding: 10;;
>>>>>>> 14e2ca62decd1d776c1babade812541762ffebea

}
.login_p{
    margin-top: 40px;
    margin-bottom: 1rem;

}

<<<<<<< HEAD
* {
  margin: 0px;
  padding: 0px;
}

ul,
ol,
li {
  list-style: none;
}

a {
  text-decoration: none;
}

img {
  vertical-align: top;
  border: none;
}

.slide {
  position: relative;
  padding-top: 50px;
  overflow: hidden;
}

.panel {
  width: 400%;
}

.panel:after {
  content: "";
  display: block;
  clear: both;
}

.panel>li {
  width: 25%;
  height: 200px;
  float: left;
  background-repeat: no-repeat;
  background-size: 100% 100%;
  font-size: 41px;
  position: relative;
}

.panel>li:nth-of-type(1) {

}

.panel>li:nth-of-type(2) {

}

.panel>li:nth-of-type(3) {

}

t:after {
  content: "";
  display: block;
  clear: both;
}

t {
  position: absolute;
  left: 50%;
  bottom: 10%;
  transform: translateX(-50%);
}

t>li {
  float: left;
  width: 25px;
  height: 25px;
  border-radius: 50%;
  background-color: #fff;
  margin-left: 10px;
  margin-right: 10px;
  text-indent: -9999px;
  cursor: pointer;
}

t>li.on {
  background-color: #342f2f;
}
.col-lg-6 {
    -webkit-box-flex: 0;
    -ms-flex: 0 0 50%;
    flex: 48 35 50%;
    max-width: auto;
    max-height: 150px;
}
=======

>>>>>>> 14e2ca62decd1d776c1babade812541762ffebea
</style>   

    
       <title>회원가입</title>
   </head>
   
   
   
   
   <body data-spy="scroll" data-target=".site-navbar-target" data-offset="300" >
   
     <div class="wrap">

    <div class="site-mobile-menu site-navbar-target">
      <div class="site-mobile-menu-header">
        <div class="site-mobile-menu-close mt-3">
          <span class="icon-close2 js-menu-toggle"></span>
        </div>
      </div>
      <div class="site-mobile-menu-body"></div>
    </div>
   
    <header class="site-navbar light js-sticky-header site-navbar-target" role="banner">

      <div class="container">
        <div class="row align-items-center">

          <div class="col-6 col-xl-2">
            <div class="mb-0 site-logo"><a href="index" class="mb-0">정부노인지원<span class="text-primary">.</span> </a></div>
          </div>

          <div class="col-12 col-md-10 d-none d-xl-block">
            <nav class="site-navigation position-relative text-right" role="navigation">

              <ul class="site-menu main-menu js-clone-nav mr-auto d-none d-lg-block">

               
                <li><a href="index" class="active nav-link">Home</a></li>
                <li class="has-children">
                  <a href="apply_services_en" class="nav-link">도우미 서비스</a>
                  <ul class="dropdown">
                    <li><a href="apply_services_en" class="nav-link">서비스 소개</a></li>
                    <li><a href="apply_services_type_en" class="nav-link">서비스 신청하기</a></li>
                <li class="has-children">
                    <a href="#">도우미 지원하기</a>
                      <ul class="dropdown">
                        <li><a href="guide_Life_apply_yj">생활도우미 지원하기</a></li>
                        <li><a href="guide_nursing_apply_yj">간병인도우미 지원하기</a></li>
                      </ul>
                      </li>
                  </ul>
                </li>
                <li class="has-children">
                  <a href="voice_service_intro_dy" class="nav-link">음성인식 서비스</a>
                  <ul class="dropdown">
                    <li><a href="voice_service_intro_dy" class="nav-link">서비스 소개</a></li>
                  </ul>
                </li>

            <li class="has-children">
                  <a href="#" class="nav-link">커뮤니티 서비스</a>
                  <ul class="dropdown">
                    <li><a href="communityService" class="nav-link">친구위치 검색</a></li>
                    <li class="has-children">
                      <a href="#">커뮤니티 공간 정보</a>
                      <ul class="dropdown">
                        <li><a href="medicalLocation">의료복지시설</a></li>
                        <li><a href="silverhallLocation">재가노인복지시설</a></li>
                        <li><a href="elderlyhomeLocation">요양시설</a></li>
                      </ul>
                    </li>
                  </ul>
                </li>
                <li><a href="bus_service" class="nav-link">노약자 교통정보</a></li>
                <li><a href="contact" class="nav-link">Contact</a></li>
              </ul>
            </nav>
           </div> 
   <div class="col-6 d-inline-block d-xl-none ml-md-0 py-3" style="position: relative; top: 3px;"><a href="#" class="site-menu-toggle js-menu-toggle float-right"><span class="icon-menu h3 text-white"></span></a></div>
        </div>
      </div>
      
    </header>
    

    <div class="slide-item overlay" style="background-image: url('resources/images/slider-1.jpg')">
<<<<<<< HEAD
      <div class="container">
        <div class="row">
          <div class="col-lg-6 align-self-center">
          <div class="login_div">
           <table class="login_table">
      <h3>회원가입</h3>
<div class="slide">
    <ul class="panel">       
       <li>이름을입력하세요.<input type="text" name="name"></li>
       <li>아이디를입력하세요.<input type="text" name="id"> </li>
       <li>비밀번호를입력하세요.<input type="password" name="pwd"></li>
       <li>성별선택바랍니다. 
       <select name="sex">
          <option value="">성별선택</option>
          <option value="">남자</option>
          <option value="">여자</option>
       </select></li>
      <li>휴대전화를 입력하세요.
      <select name="Phone">
          <option value="">-선택-</option>
          <option value="">010</option>
         <option value="">011</option>
         <option value="">014</option>
         <option value="">016</option>
      </select></li>
      <li>주소를입력하세요.<input type="text" name="addr"></li>
   </ul>
   <ul class="dot">
       <li class="on">이름</li>
       <li>아이디</li>
       <li>비밀번호</li>
       <li>성별</li>
       <li>전화번호</li>
       <li>1</li>
       <li>1</li>
       <li>1</li>
       
    </ul>     
       </div> 
           </table>
           </div>            
          </div>
        </div>
      </div>  
    </div>
  </div>
</div>

<div class="site-footer bg-light">
=======
>>>>>>> 14e2ca62decd1d776c1babade812541762ffebea
      <div class="container">
        <div class="row">
          <div class="col-lg-6 align-self-center">
          <div class="login_div">
           <table class="login_table">
   <div class="container">
    <div class="row">
    <div class="col-sm-12 text-center" >
    <div class="col-sm-3"></div>
     
    <div class="col-sm-6">

    <form action="MemberJoinProc.jsp" method="post">
        <table class="table table-boardered">
            <h2>회원가입</h2>
            <tr>
                <th>아이디</th>
                <td><input type="text" class="form-control" name="id" placeholder=""></td>        
            </tr>
            <tr>
                <th>패스워드</th>
                <td><input type="password" class="form-control" name="pass1" placeholder=""></td>      
            </tr>
             
            <tr>
                <th>패스워드확인</th>
                <td><input type="password" class="form-control" name="pass2"></td>        
            </tr>
            <tr>
                <th>이름</th>
                <td><input type="text" class="form-control" name="name" placeholder="이름을 입력하세요."></td>        
            </tr>
            <tr>
                <th>이메일</th>
                <td><input type="email" class="form-control" name="email"></td>       
            </tr>
             
            <tr>
                <th>전화번호</th>
                <td><input type="tel" class="form-control" name="tel"></td>       
            </tr>
             
            <tr>
                <th>성별</th>
                <td>
                <input type="radio"  name="sex" value="남">남자 &nbsp;&nbsp;
                <input type="radio"  name="sex" value="여">여자 &nbsp;&nbsp;
                </td>     
            </tr> 
            <tr>
			   <th> 주소 </th>
			   <td>
			    <input type = "text"/>
			    <input type = "button" value = "주소찾기"/>
			   </td>
			  </tr>
			  <tr>
			   <th> 상세주소 </th>
			   <td>
			    <input type = "text"/>
			   </td>
  					</tr>                         
            <tr>
                <td colspan="2"><center>
                <input type="submit" class="btn btn-primary" value=완료>
                <input type="reset" class="btn btn-danger" value="취소">
                </td></center>
             
            </tr>
             
             
        </table>
    </form>
    </div>
     
    </div>
    </div>
</div>
           
           </table>
           </div>            
          </div>
        </div>
      </div>  
    </div>
<<<<<<< HEAD
=======
  </div>

>>>>>>> 14e2ca62decd1d776c1babade812541762ffebea
    </body>
</html>