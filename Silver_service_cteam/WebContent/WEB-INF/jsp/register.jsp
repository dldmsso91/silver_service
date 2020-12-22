<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
   <head>
<meta charset="utf-8">
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
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
 
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
 
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script>

</script>
	<script type="text/javascript">
		$(document).ready(function(){
			// 취소
			$(".cencle").on("click", function(){
				
				location.href = "/login";
						    
			})
		
			$("#submit").on("click", function(){
				if($("#u_id").val()==""){
					alert("아이디를 입력해주세요.");
					$("#u_id").focus();
					return false;
				}
				if($("#u_password").val()==""){
					alert("비밀번호를 입력해주세요.");
					$("#u_password").focus();
					return false;
				}
				if($("#u_name").val()==""){
					alert("성명을 입력해주세요.");
					$("#u_name").focus();
					return false;
				}
			});
			
				
			
		})
	 // 취소 버튼 클릭시 로그인 화면으로 이동
        function goLoginForm() {
            location.href="login";
        }



</script>
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
.login_div {
    background: rgb(120 130 110 / 75%);
    border-radius: -10px;
    height: 75vh;
    width: 100%;
    text-align: center;
    color: aliceblue;
}
.login_table{

    margin: 0 auto;
}
.login_table tr td{
   color: aliceblue;
   padding: 10;;

}
.login_p{
    margin-top: 40px;
    margin-bottom: 1rem;

}


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
            <div class="mb-0 site-logo"><a href="index" class="mb-0">Elderly<span class="text-primary">.</span> </a></div>
          </div>

          <div class="col-12 col-md-10 d-none d-xl-block">
            <nav class="site-navigation position-relative text-right" role="navigation">

              <ul class="site-menu main-menu js-clone-nav mr-auto d-none d-lg-block">

               
                <li><a href="index" class="active nav-link">Home</a></li>
                <li class="has-children">
                  <a href="apply_services_en.do" class="nav-link">도우미 서비스</a>
                  <ul class="dropdown">
                    <li><a href="apply_services_en.do" class="nav-link">서비스 소개</a></li>
                    <li><a href="apply_services_type_en.do" class="nav-link">서비스 신청하기</a></li>
                <li class="has-children">
                    <a href="#">도우미 지원하기</a>
                      <ul class="dropdown">
                        <li><a href="guide_Life_apply_yj.do">생활도우미 지원하기</a></li>
                        <li><a href="guide_nursing_apply_yj.do">간병인도우미 지원하기</a></li>
                      </ul>
                      </li>
                  </ul>
                </li>
                <li class="has-children">
                  <a href="voice_service_intro_dy.do" class="nav-link">음성인식 서비스</a>
                  <ul class="dropdown">
                    <li><a href="voice_service_intro_dy.do" class="nav-link">서비스 소개</a></li>
                  </ul>
                </li>

            <li class="has-children">
                  <a href="#" class="nav-link">커뮤니티 서비스</a>
                  <ul class="dropdown">
                    <li><a href="communityService.do" class="nav-link">친구위치 검색</a></li>
                    <li class="has-children">
                      <a href="#">커뮤니티 공간 정보</a>
                      <ul class="dropdown">
                        <li><a href="medicalLocation.do">노인의료복지시설</a></li>
                        <li><a href="silverhallLocation.do">재가노인복지시설</a></li>
                        <li><a href="elderlyhomeLocation.do">노인여가복지시설</a></li>
                      </ul>
                    </li>
                  </ul>
                </li>
                <li><a href="bus_service.do" class="nav-link">노약자 교통정보</a></li>
                <li><a href="contact.do" class="nav-link">Contact</a></li>
              </ul>
            </nav>
           </div> 
   <div class="col-6 d-inline-block d-xl-none ml-md-0 py-3" style="position: relative; top: 3px;"><a href="#" class="site-menu-toggle js-menu-toggle float-right"><span class="icon-menu h3 text-white"></span></a></div>
        </div>
      </div>
      
    </header>
    

    <div class="slide-item overlay" style="background-image: url('resources/images/slider-1.jpg')">
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

    <form action="register" method="post">
        <table class="table tabl e-boardered">
            <h2>회원가입</h2>
            <tr>
                <th>아이디</th>
                <td><input type="text" class="form-control" id="u_id"name="u_id" placeholder=""></td>        
               <td><button class="btn btn-primary" onclick="registerCheckFunction();" type="button" >중복제크</button></td>
            </tr>
            <tr>
                <th>비밀번호</th>
                <td><input type="password" class="form-control" id="u_password" name="u_password" placeholder=""></td>      
            </tr>
              
            <tr>
                <th>패스워드확인</th>
                <td><input type="password" class="form-control"  id="u_password2"name="u_password2"></td>        
            </tr> 
            <tr>
                <th>이름</th>
                <td><input type="text" class="form-control" id="u_name"name="u_name" placeholder="이름을 입력하세요."></td>        
            </tr>
                    <tr>
                    <th>주민번호</th>
                    <td>
                        <input type="text" id="u_birth" name="u_birth"  placeholder="6자리" size="8" >
                        -
                        <input type="password"  id="u_birth2" name="u_birth2"  placeholder="7자리" size="8">
                    </td>
                </tr>  
            <tr>
                <th>전화번호</th>
                <td><input type="tel" class="form-control" name="u_phone" id="u_phone"></td>       
            </tr>
            <tr>
                <th>이메일</th>
                <td><input type="email" class="form-control" name="u_email" id="u_email"></td>       
            </tr>					
                        <tr>
            <th> 우편번호</th>
            <td>
             <input type = "text" name="u_addr" id="u_addr"/>
             <input type = "button" value = "주소찾기"/>
            </td>
           </tr>
            <tr>
            <th> 주소 </th>
            <td>
             <input type = "text" name="u_addr1" id="u_addr1"/>
            </td>
           </tr>
           <tr>
            <th> 상세주소 </th>
            <td>
             <input type = "text" name="u_addr2" id="u_addr2"/>
            </td>
                 </tr>                         
            <tr>
                <td colspan="2"><center>
                <button  type="submit" id="submit" class="btn btn-primary" value=회원가입>회원가입</button>
                 <input type="button" value="취소" onclick="goLoginForm()" class="btn btn-primary" >

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
  </div>

    </body>
</html>