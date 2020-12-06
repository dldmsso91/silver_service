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
	  minSlides: 5,
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
});   


</script> 
  
<style>
h2{text-align: center;
	margin-top: 30px;
    margin-bottom: 50px;}
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
                }
.bx-wrapper li img{
	height: 240px;
    margin: 0 auto;
                }      
.bx-wrapper li a{
    margin-top: 30px;
                }      
.care-list {
    display: flex;
    font-size: 90%;
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
.confirm_button{
    width: 100px;
    height: 30px;
    background-color: green;
    margin: auto;
    border-radius: 30px;
    text-align: center;
    font-size: 15px;
    font-family: "돋움";
}
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
 					<li class="has-children">
                    <a href="#">도우미 지원하기</a>
                      <ul class="dropdown">
                        <li><a href="guide_Life_apply.do">생활도우미 지원하기</a></li>
                        <li><a href="guide_nursing_apply.do">간병인도우미 지원하기</a></li>
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
</div>
</div>

    </header>


    <!-- MAIN -->



    <div id="test" class="slide-item overlay">

    </div>

	<h2>신청 접수된 고객리스트</h2>

	<form>
		<div class='bxslider_area'>
			<ul class="bxslider">
			  <li>
			  <img src="resources/images/1.jpg" />
		      <h3>고객명 : {{}}</h3>
		      <h5>신청 고객 정보</h5>
		      <p>간병일정 : {{}}</p>	
		      <p>간병장소 : {{}}</p>
		      <p>환자정보 : {{}}</p>
			  <p><a href="succesed_apply_guide_my_page_yj.do" class="btn btn-primary">확인하기</a></p>
			 </li>
			  <li>
			  <img src="resources/images/1.jpg" />
		      <h3>고객명 : {{}}</h3>
		      <h5>신청 고객 정보</h5>
		      <p>간병일정 : {{}}</p>	
		      <p>간병장소 : {{}}</p>
		      <p>환자정보 : {{}}</p>
			  <p><a href="succesed_apply_guide_my_page_yj.do" class="btn btn-primary">확인하기</a></p>
			 </li>
			  <li>
			  <img src="resources/images/1.jpg" />
		      <h3>고객명 : {{}}</h3>
		      <h5>신청 고객 정보</h5>
		      <p>간병일정 : {{}}</p>	
		      <p>간병장소 : {{}}</p>
		      <p>환자정보 : {{}}</p>
			  <p><a href="succesed_apply_guide_my_page_yj.do" class="btn btn-primary">확인하기</a></p>
			 </li>
			  <li>
			  <img src="resources/images/1.jpg" />
		      <h3>고객명 : {{}}</h3>
		      <h5>신청 고객 정보</h5>
		      <p>간병일정 : {{}}</p>	
		      <p>간병장소 : {{}}</p>
		      <p>환자정보 : {{}}</p>
			  <p><a href="succesed_apply_guide_my_page_yj.do" class="btn btn-primary">확인하기</a></p>
			 </li>
			  <li>
			  <img src="resources/images/1.jpg" />
		      <h3>고객명 : {{}}</h3>
		      <h5>신청 고객 정보</h5>
		      <p>간병일정 : {{}}</p>	
		      <p>간병장소 : {{}}</p>
		      <p>환자정보 : {{}}</p>
			  <p><a href="succesed_apply_guide_my_page_yj.do" class="btn btn-primary">확인하기</a></p>
			 </li>
			  <li>
			  <img src="resources/images/1.jpg" />
		      <h3>고객명 : {{}}</h3>
		      <h5>신청 고객 정보</h5>
		      <p>간병일정 : {{}}</p>	
		      <p>간병장소 : {{}}</p>
		      <p>환자정보 : {{}}</p>
			  <p><a href="succesed_apply_guide_my_page_yj.do" class="btn btn-primary">확인하기</a></p>
			 </li>
			  <li>
			  <img src="resources/images/1.jpg" />
		      <h3>고객명 : {{}}</h3>
		      <h5>신청 고객 정보</h5>
		      <p>간병일정 : {{}}</p>	
		      <p>간병장소 : {{}}</p>
		      <p>환자정보 : {{}}</p>
			  <p><a href="succesed_apply_guide_my_page_yj.do" class="btn btn-primary">확인하기</a></p>
			 </li>
			  <li>
			  <img src="resources/images/1.jpg" />
		      <h3>고객명 : {{}}</h3>
		      <h5>신청 고객 정보</h5>
		      <p>간병일정 : {{}}</p>	
		      <p>간병장소 : {{}}</p>
		      <p>환자정보 : {{}}</p>
			  <p><a href="succesed_apply_guide_my_page_yj.do" class="btn btn-primary">확인하기</a></p>
			 </li>
			  <li>
			  <img src="resources/images/1.jpg" />
		      <h3>고객명 : {{}}</h3>
		      <h5>신청 고객 정보</h5>
		      <p>간병일정 : {{}}</p>	
		      <p>간병장소 : {{}}</p>
		      <p>환자정보 : {{}}</p>
			  <p><a href="succesed_apply_guide_my_page_yj.do" class="btn btn-primary">확인하기</a></p>
			 </li>
			  <li>
			  <img src="resources/images/1.jpg" />
		      <h3>고객명 : {{}}</h3>
		      <h5>신청 고객 정보</h5>
		      <p>간병일정 : {{}}</p>	
		      <p>간병장소 : {{}}</p>
		      <p>환자정보 : {{}}</p>
			  <p><a href="succesed_apply_guide_my_page_yj.do" class="btn btn-primary">확인하기</a></p>
			 </li>
			  <li>
			  <img src="resources/images/1.jpg" />
		      <h3>고객명 : {{}}</h3>
		      <h5>신청 고객 정보</h5>
		      <p>간병일정 : {{}}</p>	
		      <p>간병장소 : {{}}</p>
		      <p>환자정보 : {{}}</p>
			  <p><a href="succesed_apply_guide_my_page_yj.do" class="btn btn-primary">확인하기</a></p>
			 </li>
			  <li>
			  <img src="resources/images/1.jpg" />
		      <h3>고객명 : {{}}</h3>
		      <h5>신청 고객 정보</h5>
		      <p>간병일정 : {{}}</p>	
		      <p>간병장소 : {{}}</p>
		      <p>환자정보 : {{}}</p>
			  <p><a href="succesed_apply_guide_my_page_yj.do" class="btn btn-primary">확인하기</a></p>
			 </li>
			  <li>
			  <img src="resources/images/1.jpg" />
		      <h3>고객명 : {{}}</h3>
		      <h5>신청 고객 정보</h5>
		      <p>간병일정 : {{}}</p>	
		      <p>간병장소 : {{}}</p>
		      <p>환자정보 : {{}}</p>
			  <p><a href="succesed_apply_guide_my_page_yj.do" class="btn btn-primary">확인하기</a></p>
			 </li>
			</ul>
		</div>
	</form>
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
<script></script>


</body>
</html>