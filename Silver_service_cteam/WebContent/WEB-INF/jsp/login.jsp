<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!doctype html>
<html lang="en">
<head>
  <title>Elderly &mdash; Website Template by Colorlib</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">    
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;700&family=Playfair+Display:wght@400;700&display=swap" rel="stylesheet">
   
   <link rel="preconnect" href="https://fonts.gstatic.com">
   <link href="https://fonts.googleapis.com/css2?family=Nanum+Myeongjo:wght@700;800&display=swap" rel="stylesheet">
   <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">   
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
  <link rel="stylesheet" href="resources/css/style.css">
<script type="text/javascript">

    function checkValue(){
            if(!document.userInfo.u_id.value){
                alert("아이디를 입력하세요.");
                return false;
            }
            
            if(!document.userInfo.u_password.value){
                alert("비밀번호를 입력하세요.");
                return false;
            }          
        }


	</script>
<style>
.login_img img {
    vertical-align: middle;
    border-style: none;
    width: 20px;
}
.text-right {
    text-align: right !important;
    width: 1047px;
}
.loginInfo {
    background-color: rgb(140 130 131 / 70%);
    border-radius: 20px;
    color: white;
    width: auto;
    height: auto;
    text-align: center;    
    text-align: -webkit-center;
}
</style>
</head>
<body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">


  <div id="overlayer"></div>
  <div class="loader">
    <div class="spinner-border text-primary" role="status">
      <span class="sr-only">Loading...</span>
    </div>
  </div>


  <div class="site-wrap">

    <div class="site-mobile-menu site-navbar-target">
      <div class="site-mobile-menu-header">
        <div class="site-mobile-menu-close mt-3">
          <span class="icon-close2 js-menu-toggle"></span>
        </div>
      </div>
      <div class="site-mobile-menu-body"></div>
    </div>

    
<!-- Header Start --> 
   
     <header class="site-navbar light js-sticky-header site-navbar-target" role="banner">

      <div class="container">
        <div class="row align-items-center">

          <div class="col-6 col-xl-2">
            <div class="mb-0 site-logo"><a href="index" class="mb-0">Elderly<span class="text-primary">.</span> </a></div>
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
				<a href="#" class="nav-link">요양시설 서비스</a>
				<ul class="dropdown">
				<li><a href="communityService" class="nav-link">요양시설 검색</a></li>
                    <li class="has-children">
                      <a href="#">요양시설 지도 정보</a>
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

			
            <li><a href="login" class="login_img" ><img src="resources/images/login.png"></a>로그인</li>
                 <li><a href="register" class="login_img" ><img src="resources/images/sign_up.png"></a>회원가입</li>
		
              </ul>
            </nav>
          </div>


          <div class="col-6 d-inline-block d-xl-none ml-md-0 py-3" style="position: relative; top: 3px;"><a href="#" class="site-menu-toggle js-menu-toggle float-right"><span class="icon-menu h3 text-white"></span></a></div>

        </div>
      </div>

    </header>


<!-- Header End -->


    <!-- MAIN -->



    <div class="slide-item overlay" style="background-image: url('resources/images/slider-1.jpg')">
      <div class="container">
        <div class="row">
          <div class="col-lg-6 align-self-center">
       <div class="back">
             <form class="loginInfo" method="post" action="login" onsubmit="return checkValue()" name="userInfo"  id="login">                         
                  
                  <table>
                      <h1>로그인</h1>
                      <tr>
                          <td>아이디</td>
                          <td><input type="text" name="u_id" id="u_id" maxlength="50"></td>
                      </tr>
                      <tr>
                          <td>비밀번호</td>
                          <td><input type="password" name="u_password" id="u_password" maxlength="50"></td>
                      </tr>
                   
            
                  	
                  </table>
                  
                  <br>
                  <div class="back">
					<a target="" id="idinquiry" href="">아이디 찾기</a><span class="bar" aria-hidden="true">|</span> <a target="_blank" id="pwinquiry" href="">비밀번호 찾기</a>
				</div>
                  	<div>
                   <p>
         <!--           <td><input type="button" name="#" id="#" value="아이디/비밀번호 찾기"  class="btn btn-primary"/></td> -->
                   <button type="submit" id="submit"class="btn btn-primary" class="checkValue" onclick="">로그인</button>
                       <a  href="register" class="btn btn-primary">회원가입</a>
                   </p>
            <c:if test="${msg == false}">
			<p style="color: red;">로그인 실패! 아이디와 비밀번호 확인해주세요.</p>
			</c:if>
                   
                   </div>                         
              </form>
   
         </div>
         
          </div>
        </div>
           
      </div>  

   
    </div>

   

  <div class="site-footer bg-light">
    <div class="container">
      <div class="row">
        <div class="col-lg-4">
          <h2 class="footer-heading mb-4">About</h2>
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Modi cumque tenetur inventore veniam, hic vel ipsa necessitatibus ducimus architecto fugiat!</p>
          <div class="my-5 social">
            <a href="#" class="pl-0 pr-3"><span class="icon-facebook"></span></a>
            <a href="#" class="pl-3 pr-3"><span class="icon-twitter"></span></a>
            <a href="#" class="pl-3 pr-3"><span class="icon-instagram"></span></a>
            <a href="#" class="pl-3 pr-3"><span class="icon-linkedin"></span></a>
          </div>
        </div>
        <div class="col-lg-8">
          <div class="row">
            <div class="col-lg-4">
              <h2 class="footer-heading mb-4">Quick Links</h2>
              <ul class="list-unstyled">
                <li><a href="#">Amazing Atmosphere</a></li>
                <li><a href="#">Caring Staff</a></li>
                <li><a href="#">FAQs</a></li>
                <li><a href="#">About Us</a></li>
                <li><a href="#">Contact Us</a></li>
              </ul>
            </div>
            <div class="col-lg-4">
              <h2 class="footer-heading mb-4">Helpful Link</h2>
              <ul class="list-unstyled">
                <li><a href="#">Hospice Care</a></li>
                <li><a href="#">Excellent Cuisine</a></li>
                <li><a href="#">Privacy</a></li>
                <li><a href="#">Terms</a></li>
              </ul>
            </div>
            <div class="col-lg-4">
              <h2 class="footer-heading mb-4">Resources</h2>
              <ul class="list-unstyled">
                <li><a href="#">Health Care</a></li>
                <li><a href="#">Elderly Care</a></li>
                <li><a href="#">Care with Love</a></li>
                <li><a href="#">Quality Care</a></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
      <div class="row text-center">
        <div class="col-md-12">
          <div class="border-top pt-5">
            <p class="copyright"><small>
              <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
              Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart text-danger" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank" >Colorlib</a>
              <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></small></p>

            </div>
          </div>

        </div>
      </div>
    </div>
  </div>


<script src="resources/js/jquery-3.3.1.min.js"></script>
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



</body>
</html>