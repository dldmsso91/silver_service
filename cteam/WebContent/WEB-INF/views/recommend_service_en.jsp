<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
	  minSlides: 4,
	  maxSlides: 2,
	  slideWidth: 700,
	  slideMargin: 20,
	  touchEnabled : (navigator.maxTouchPoints > 0)
	});
    $('#star_grade a').click(function(){
        $(this).parent().children("a").removeClass("on");  /* 별점의 on 클래스 전부 제거 */ 
        $(this).addClass("on").prevAll("a").addClass("on"); /* 클릭한 별과, 그 앞 까지 별점에 on 클래스 추가 */
        return false;
    });

});   


</script> 
  
<style>
h2 {
    text-align: center;
    margin: 0 auto;
    margin-top: 74px;
    margin-bottom: 20px;
    width: 29%;
    padding: 2vh;
    border-bottom-style: double;
    font-size: 30px;
    font-weight: 900;
}
    
    
h5{	margin-top: 30px;
    }
h3{	margin-top: 30px;
    }
.bxslider_area{margin: 0 auto;
    margin-bottom: 150px;
}
.bx-wrapper{
    margin: 0px auto;
	text-align: center;
                }
.bx-wrapper li{
    border: 1px solid #cacaca;
    padding: 10px;
    border-radius: 20px;
    box-shadow: 5px 5px 5px #e8e8e8;
                }
.bx-wrapper li img{
	height: 240px;
    margin: 0 auto;
    border-radius: 15px;    
                }      
.bx-wrapper li a{
    margin-top: 30px;
                } 
                
.bx-wrapper li p {
    margin-top: 0;
    margin-bottom: 1rem;
    width: 65%;
    margin: 0 auto;
}     
.care-list {
    display: flex;
    font-size: 90%;
    margin: 0 auto;
    width: 60%;
}

.care-list .item {
    background: #ededed;
    margin: .3em;
    padding: .5em;
    border-radius: .5em;
    text-align: center;
    width: 3.6em;
    font-size: 85%;
}

.title {
    color: #000;
    line-height: 1.8em;
    font-size: 85%;
}                
.care-list .line-color {
    width: 100%;
    border-radius: 1em;
    height: .3em;
    margin: 0 0 .3em 0;
}
.care-list .line-color.re {
    background: #ff4b57;
}  
.care-list .line-color.am {
    background: #ff763a;
}
.care-list .line-color.ch {
    background: #ffb300;
}
.care-list .line-color.su {
    background: #96d84b;
}
.care-list .count {
    color: #000;
    font-weight: bold;
}
.starR{
  background: url('http://miuu227.godohosting.com/images/icon/ico_review.png') no-repeat right 0;
  background-size: auto 100%;
  width: 30px;
  height: 30px;
  display: inline-block;
  text-indent: -9999px;
  cursor: pointer;
}
.starR.on{background-position:0 0;}     

.bx-wrapper {
    -webkit-box-shadow: 0 0 5px #ccc0;
    box-shadow: 0 0 5px #ccc0;
    border: 5px solid #fff;
    background: #fff;
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
            <div class="mb-0 site-logo"><a href="index.do" class="mb-0">Elderly<span class="text-primary">.</span> </a></div>
          </div>

          <div class="col-12 col-md-10 d-none d-xl-block">
            <nav class="site-navigation position-relative text-right" role="navigation">

              <ul class="site-menu main-menu js-clone-nav mr-auto d-none d-lg-block">
                <li><a href="index.do" class="active nav-link">Home</a></li>
                <li class="has-children">
                  <a href="apply_services_en.do" class="nav-link">도우미 서비스</a>
                  <ul class="dropdown">
                    <li><a href="apply_services_en.do" class="nav-link">서비스 소개</a></li>
                    <li><a href="apply_services_type_en.do" class="nav-link">서비스 신청하기</a></li>
                    <li><a href="apply_caregiver_detail_en.do" class="nav-link">도우미 지원하기</a></li>
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
                        <li><a href="medicalLocation.do">의료복지시설</a></li>
                        <li><a href="silverhallLocation.do">재가노인복지시설</a></li>
                        <li><a href="elderlyhomeLocation.do">요양시설</a></li>
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


<!-- Header End -->

    <!-- MAIN -->



    <div id="test" class="slide-item overlay">

    </div>

	<h2>이은내님의 조건에 맞는 도우미들입니다</h2>

	<form>
		<div class='bxslider_area'>
			<ul class="bxslider">
			  <li>
			  <img src="resources/images/1.jpg" />
		      <h3>이문자</h3>
		      <hr>
		      <h5>간병 서비스 이력</h5>
		      <p>실제 간병한 환자의 병명, 증상 유형 별 분석 데이터</p>	
			  <img src="resources/images/4.png"/>
			  <div class="care-list">
				  <div class="item">
				  	<div class="title">재활</div>
				  	<div class="line-color re"></div>
				  	<div class="count">
				  		<span>12</span>회
				  	</div>
				  </div>
				  <div class="item">
				  	<div class="title">암</div>
				  	<div class="line-color am"></div>
				  	<div class="count">
				  		<span>12</span>회
				  	</div>
				  </div>
				  <div class="item">
				  	<div class="title">치매</div>
				  	<div class="line-color ch"></div>
				  	<div class="count">
				  		<span>12</span>회
				  	</div>
				  </div>
				  <div class="item">
				  	<div class="title">격리</div>
				  	<div class="line-color su"></div>
				  	<div class="count">
				  		<span>12</span>회
				  	</div>
				  </div>
			  </div>
		      <hr>
  		      <h5>도우미에 대한 평가</h5>	
				<p id="star_grade">
				        <a href="#">★</a>
				        <a href="#">★</a>
				        <a href="#">★</a>
				        <a href="#">★</a>
				        <a href="#">★</a>
				</p>
				<a href="giver_resume_detail_en.do" class="btn btn-primary">상세보기</a>		  	
			  </li>
			  <li>
			  <img src="resources/images/2.jpg"/>
		      <h3>이요롱</h3>
		      <hr>
		      <h5>간병 서비스 이력</h5>
		      <p>실제 간병한 환자의 병명, 증상 유형 별 분석 데이터</p>	
			  <img src="resources/images/5.png"/>
			  <div class="care-list">
				  <div class="item">
				  	<div class="title">재활</div>
				  	<div class="line-color re"></div>
				  	<div class="count">
				  		<span>12</span>회
				  	</div>
				  </div>
				  <div class="item">
				  	<div class="title">암</div>
				  	<div class="line-color am"></div>
				  	<div class="count">
				  		<span>12</span>회
				  	</div>
				  </div>
				  <div class="item">
				  	<div class="title">치매</div>
				  	<div class="line-color ch"></div>
				  	<div class="count">
				  		<span>12</span>회
				  	</div>
				  </div>
				  <div class="item">
				  	<div class="title">격리</div>
				  	<div class="line-color su"></div>
				  	<div class="count">
				  		<span>12</span>회
				  	</div>
				  </div>
			  </div>
		      <hr>
  		      <h5>도우미에 대한 평가</h5>	
				<p id="star_grade">
				        <a href="#">★</a>
				        <a href="#">★</a>
				        <a href="#">★</a>
				        <a href="#">★</a>
				        <a href="#">★</a>
				</p>
				<a href="giver_resume_detail_en.do" class="btn btn-primary">상세보기</a>		  
			  </li>
			  <li>
			  <img src="resources/images/3.jpg" />
		      <h3>김애용</h3>
		      <hr>
		      <h5>간병 서비스 이력</h5>
		      <p>실제 간병한 환자의 병명, 증상 유형 별 분석 데이터</p>	  
			  <img src="resources/images/4.png"/>
			  <div class="care-list">
				  <div class="item">
				  	<div class="title">재활</div>
				  	<div class="line-color re"></div>
				  	<div class="count">
				  		<span>12</span>회
				  	</div>

				  </div>
				  <div class="item">
				  	<div class="title">암</div>
				  	<div class="line-color am"></div>
				  	<div class="count">
				  		<span>12</span>회
				  	</div>
				  </div>
				  <div class="item">
				  	<div class="title">치매</div>
				  	<div class="line-color ch"></div>
				  	<div class="count">
				  		<span>12</span>회
				  	</div>
				  </div>
				  <div class="item">
				  	<div class="title">격리</div>
				  	<div class="line-color su"></div>
				  	<div class="count">
				  		<span>12</span>회
				  	</div>
				  </div>
			  </div>
		      <hr>
  		      <h5>도우미에 대한 평가</h5>	
				<p id="star_grade">
				        <a href="#">★</a>
				        <a href="#">★</a>
				        <a href="#">★</a>
				        <a href="#">★</a>
				        <a href="#">★</a>
				</p>
				<a href="giver_resume_detail_en.do" class="btn btn-primary">상세보기</a>		    		  
			  </li>
			  <li>
			  <img src="resources/images/1.jpg" />
		      <h3>이문자</h3>
		      <hr>
		      <h5>간병 서비스 이력</h5>
		      <p>실제 간병한 환자의 병명, 증상 유형 별 분석 데이터</p>	
			  <img src="resources/images/4.png"/>
			  <div class="care-list">
				  <div class="item">
				  	<div class="title">재활</div>
				  	<div class="line-color re"></div>
				  	<div class="count">
				  		<span>12</span>회
				  	</div>
				  </div>
				  <div class="item">
				  	<div class="title">암</div>
				  	<div class="line-color am"></div>
				  	<div class="count">
				  		<span>12</span>회
				  	</div>
				  </div>
				  <div class="item">
				  	<div class="title">치매</div>
				  	<div class="line-color ch"></div>
				  	<div class="count">
				  		<span>12</span>회
				  	</div>
				  </div>
				  <div class="item">
				  	<div class="title">격리</div>
				  	<div class="line-color su"></div>
				  	<div class="count">
				  		<span>12</span>회
				  	</div>
				  </div>
			  </div>
		      <hr>
  		      <h5>도우미에 대한 평가</h5>	
				<p id="star_grade">
				        <a href="#">★</a>
				        <a href="#">★</a>
				        <a href="#">★</a>
				        <a href="#">★</a>
				        <a href="#">★</a>
				</p>
				<a href="giver_resume_detail_en.do" class="btn btn-primary">상세보기</a>		  
			  </li>
			  <li>
			  <img src="resources/images/2.jpg"/>
		      <h3>이요롱</h3>
		      <hr>
		      <h5>간병 서비스 이력</h5>
		      <p>실제 간병한 환자의 병명, 증상 유형 별 분석 데이터</p>	
			  <img src="resources/images/5.png"/>
			  <div class="care-list">
				  <div class="item">
				  	<div class="title">재활</div>
				  	<div class="line-color re"></div>
				  	<div class="count">
				  		<span>12</span>회
				  	</div>
				  </div>
				  <div class="item">
				  	<div class="title">암</div>
				  	<div class="line-color am"></div>
				  	<div class="count">
				  		<span>12</span>회
				  	</div>
				  </div>
				  <div class="item">
				  	<div class="title">치매</div>
				  	<div class="line-color ch"></div>
				  	<div class="count">
				  		<span>12</span>회
				  	</div>
				  </div>
				  <div class="item">
				  	<div class="title">격리</div>
				  	<div class="line-color su"></div>
				  	<div class="count">
				  		<span>12</span>회
				  	</div>
				  </div>
			  </div>
		      	<hr>
  		      <h5>도우미에 대한 평가</h5>	
 				<p id="star_grade">
				        <a href="#">★</a>
				        <a href="#">★</a>
				        <a href="#">★</a>
				        <a href="#">★</a>
				        <a href="#">★</a>
				</p>
				<a href="giver_resume_detail_en.do" class="btn btn-primary">상세보기</a>		  
			  </li>
			  <li>
				  <img src="resources/images/3.jpg" />
			      <h3>김애용</h3>
		      	<hr>
			      <h5>간병 서비스 이력</h5>
			      <p>실제 간병한 환자의 병명, 증상 유형 별 분석 데이터</p>	  
				  <img src="resources/images/4.png"/>
				  <div class="care-list">
					  <div class="item">
					  	<div class="title">재활</div>
					  	<div class="line-color re"></div>
					  	<div class="count">
					  		<span>12</span>회
					  	</div>
					  </div>
					  <div class="item">
					  	<div class="title">암</div>
					  	<div class="line-color am"></div>
					  	<div class="count">
					  		<span>12</span>회
					  	</div>
					  </div>
					  <div class="item">
					  	<div class="title">치매</div>
					  	<div class="line-color ch"></div>
					  	<div class="count">
					  		<span>12</span>회
					  	</div>
					  </div>
					  <div class="item">
					  	<div class="title">격리</div>
					  	<div class="line-color su"></div>
					  	<div class="count">
					  		<span>12</span>회
					  	</div>
					  </div>
				  </div>
		      	<hr>
  		      <h5>도우미에 대한 평가</h5>	
				<p id="star_grade">
				        <a href="#">★</a>
				        <a href="#">★</a>
				        <a href="#">★</a>
				        <a href="#">★</a>
				        <a href="#">★</a>
				</p>		  
				<a href="giver_resume_detail_en.do" class="btn btn-primary">상세보기</a>		  
			  </li>
			</ul>
		</div>
	</form>



 
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