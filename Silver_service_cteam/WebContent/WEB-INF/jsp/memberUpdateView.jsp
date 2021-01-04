<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
  <title>Elderly &mdash; Website Template by Colorlib</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">    

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

  <link rel="stylesheet" href="resources/css/style_page.css">

  <link rel="stylesheet" href="resources/css/care_service_en.css">
  
  
  
    <link rel="stylesheet" href="resources/css/style_mypage.css">

  
  
  
  
  
  
<script src="https://code.jquery.com/jquery-3.4.1.js"   
	integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="   
	crossorigin="anonymous">
</script>


    <link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
    <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
	<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>




<script>
$(document).ready(function(){
	$('.bxslider').bxSlider({
	  auto: true,
	  autoControls: true,
	  stopAutoOnClick: true,
	  pager: true,
	  minSlides: 6,
	  maxSlides: 2,
	  slideWidth: 800,
	  slideMargin: 20,
	  touchEnabled : (navigator.maxTouchPoints > 0)
	});
    $('#star_grade a').click(function(){
        $(this).parent().children("a").removeClass("on");  /* 별점의 on 클래스 전부 제거 */ 
        $(this).addClass("on").prevAll("a").addClass("on"); /* 클릭한 별과, 그 앞 까지 별점에 on 클래스 추가 */
        return false;
    });
    
	$('.service').hover(function() {
			$(this).find("h3").css("color", "#dc8c8c");
		}, function(){
			$(this).find("h3").css("color", "#565656");
		});





   	$('.my_giver_resume_detail').click(function(){
    	
		$('.rightPage').attr("src", 'mypage_my_giver_resume_detail_en');  

	});	


   	$('.level_of_satisfaction_customer_en').click(function(){
    	
		$('.rightPage').attr("src", 'level_of_satisfaction_customer_en');  

	});	
   


	// 취소
	$(".cencle").on("click", function(){
		
		location.href = "/";
				    
	})

	$("#submit").on("click", function(){
		if($("#u_password").val()==""){
			alert("비밀번호를 입력해주세요.");
			$("#u_password").focus();
			return false;
		}
		if($("#userName").val()==""){
			alert("성명을 입력해주세요.");
			$("#userName").focus();
			return false;
		}
	});




});
</script>



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
                        <li><a href="guide_nursing_apply_yj">생활도우미 지원하기</a></li>
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

				<li class="has-children"><a href="#" class="nav-link">요양시설
									서비스</a>
								<ul class="dropdown">
									<li><a href="communityService" class="nav-link">요양시설 검색</a></li>
									<li class="has-children"><a href="#">요양시설 지도 정보</a>
										<ul class="dropdown">
											<li><a href="medicalLocation">노인의료복지시설</a></li>
											<li><a href="silverhallLocation">재가노인복지시설</a></li>
											<li><a href="elderlyhomeLocation">노인여가복지시설</a></li>
										</ul></li>
								</ul></li>
							<li><a href="bus_service" class="nav-link">노약자 교통정보</a></li>

              </ul>
            </nav>
          </div>


          <div class="col-6 d-inline-block d-xl-none ml-md-0 py-3" style="position: relative; top: 3px;"><a href="#" class="site-menu-toggle js-menu-toggle float-right"><span class="icon-menu h3 text-white"></span></a></div>

        </div>
      </div>

    </header>


<!-- Header End -->


    <!-- MAIN -->


    <div id="test" class="slide-item overlay">

    </div>




				<div class="container">
				<div class="row">
					<div id="left_contents" class="3u">
						<section>
							<header class="mypage">
								<img src="resources/images/3.jpg" alt="My Image">
							</header>
						</section>
						<section>
							<header>
								<h3>내 정보관리</h3>
							</header>
							<ul class="default alt">
								<li class=""><a href="memberUpdateView">회원정보 수정</a></li>
								<li class=""><a href="ServiceCenter_scm">고객센터</a></li>
								<li class=""><a href="memberDeleteView">회원탈퇴</a></li>
							</ul>
						</section>
						<section>
							<header>
								<h3>내 도우미 서비스</h3>
							</header>
							<ul class="default alt">
								<li class=""><a href="#">서비스 확인하기</a></li>
								<li class=""><a href="#">서비스 이용내역</a></li>
								<li class="my_giver_resume_detail"><a href="#">내 도우미 정보</a></li>
								<li class=""><a href="#">출퇴근 기록부</a></li>
								<li class="level_of_satisfaction_customer_en"><a href="#">오늘의 서비스 만족도</a></li>
							</ul>
						</section>
						<section>
							<header>
								<h3>복지시설 예약 정보</h3>
							</header>
							<ul class="default alt">
								<li><a href="myReservation">예약 확인하기</a></li>
							</ul>
						</section>
					</div>
				
				

<div class="9u" id="right_contents">
		<form action="memberUpdate" method="post">
        <table class="table tabl e-boardered">
            <h2>회원정보 수정</h2>
            <tr>
                <th>아이디</th>
                <td><input type="text" class="form-control" name="u_id" value="${member.u_id}" readonly="readonly"></td>        
              
            </tr>
            <tr>
                <th>패스워드변경</th>
                <td><input type="password" class="form-control"  name="u_password" value="${member.u_password}"></td>      
            </tr>
              
            <tr>
                <th>패스워드변경확인</th>
                <td><input type="password" class="form-control"  name="u_password2" value="${member.u_password}"></td>        
            </tr> 
            <tr>
                <th>이름</th>
                <td><input type="text" class="form-control"  name="u_name"  value="${member.u_name}"   readonly="readonly"></td>        
            	</tr>
                    <tr>
                    <th>주민번호</th>
                    <td>
                        <input type="text"  name="u_birth" id="u_birth"   size="8"  value= "${member.u_birth}" readonly="readonly" >
                        -
                        <input type="password"  name="u_birth2"   size="10" value= "${member.u_birth}" readonly="readonly" >
                    </td>
                </tr>  
            <tr>
                <th>전화번호</th>
                <td><input type="tel" class="form-control" name="u_phone"  value= "${member.u_phone}" ></td>       
            </tr>
            <tr>
                <th>이메일</th>
                <td><input type="email" class="form-control" name="u_email"  value= "${member.u_email}"></td>       
            </tr>					
            <tr>
            <th> 우편번호</th>
            <td>
             <input type = "text" name="u_addr" id="u_addr"value= "${member.u_addr}"/>
             <input type = "button" value = "주소찾기"/>
            </td>
            </tr>
            <tr>
            <th> 주소 </th>
            <td>
             <input type = "text" name="u_addr1"  id="u_addr1" value= "${member.u_addr1}" />
             <input type = "button" value = "주소찾기"/>
            </td>
           </tr>
           <tr>
            <th> 상세주소 </th>
            <td>
             <input type = "text" name="u_addr2"  id="u_addr2" value= "${member.u_addr2}" />
            </td>
                 </tr>                         
            <tr>
                <td colspan="2"><center>
                <button  type="submit" id="submit" class="btn btn-primary" value=회원정보수정>회원정보수정</button>
                <button class="cencle btn btn-danger" type="button">취소</button>

                </td></center>
             
            </tr>
             
             
        </table>
    </form>
			   		<iframe class="rightPage" src="" width="100%" height="100%" frameBorder="0"> 
			   		

			   		
			   		
			   		</iframe >						
						
					

					
						
					</div>
				</div>
			
			</div>
			<!-- /Main Content -->
			
		</div>
	<!-- /Main -->





    <div class="feature-v1">
      <div class="d-md-flex align-items-center">
        <div class="d-flex pagination-item h-100">
          <span class="icon-wrap">
            <img src="resources/images/help.png" alt="Image" class="img-fluid">
          </span>
          <div>
            <span class="subheading"><h5>도우미 서비스</h5></span>
            <h3 class="heading">편안한 생활과 전문적인 손길이 필요하신가요?</h3>
            <a href="#" class="small">여기를 눌러주세요</a>
          </div>
        </div>
        <div class="d-flex pagination-item h-100">
          <span class="icon-wrap">
            <img src="resources/images/community.png" alt="Image" class="img-fluid">
          </span>
          <div>
            <span class="subheading"><h5>커뮤니티 서비스</h5></span>
            <h3 class="heading">내 친구가 어디에있지? 지금 찾아보세요!</h3>
            <a href="#" class="small">여기를 눌러주세요</a>
          </div>
        </div>
        <div class="d-flex pagination-item h-100">
          <span class="icon-wrap">
            <img src="resources/images/bus.png" alt="Image" class="img-fluid">
<!--             <img src="resources/images/svg/svg/003-rocking-chair.svg" alt="Image" class="img-fluid"> -->
          </span>
          <div>
            <span class="subheading"><h5>교통 서비스</h5></span>
            <h3 class="heading">복잡한 교통안내! 더이상 어려워 마세요~</h3>
            <a href="#" class="small">여기를 눌러주세요</a>
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