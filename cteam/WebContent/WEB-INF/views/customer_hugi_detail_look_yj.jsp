<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!doctype html>
<html lang="en">
<head>
  <title>Elderly &mdash; Website Template by Colorlib</title>
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
    <link rel="stylesheet" href="resources/css/style2.css">
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
});   


</script> 


<style>
.apply_button{    

	text-align: center;
    margin-top: 60px;}
    

#apply_button{
    margin-left: 10px;
    margin-right: 10px;
    font-size: 15px;
    padding: 2vh;
    border-radius: 3px;
    background: #5fb56e;
    border: 0px;
}    
    
img {
    vertical-align: middle;
    border-style: none;
    width: 300px;
    height: 150px;
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


          <div class="col-6 d-inline-block d-xl-none ml-md-0 py-3" style="position: relative; top: 3px;"><a href="#" class="site-menu-toggle js-menu-toggle float-right"><span class="icon-menu h3 text-white"></span></a></div>

        </div>
      </div>
    </header>
</div>

    <!-- MAIN -->
    <!--  여기에 추가 될 이미지는 해당 리스트에서 끌고온 이미지 -->
        <div class="slide-item overlay" style="background-image: url('images/slider-1.jpg')">
      <div class="container">
        <div class="row">
          <div class="col-lg-6 align-self-center">
          </div>
        </div>
      </div>  
    </div>
   <div class="site-section bg-light">
    <div class="container">
      <div class="row">
        <div class="col-12 col-sm-6 col-md-6 col-lg-4 mb-5 mb-lg-0">
          <div class="testimonial text-center">
      <img src="resources/images/img_4_sq.jpg"     style="width: 350px;height: 350px;">
                <table style="width: 300px;">
          <tr>
            <th>작성자</th>
            <td>김길동</td>
          </tr>
          <tr>
            <th >이용후기</th>
            <td><pre></pre></td>
          </tr>
          <tr>
            <th>별점</th>
            <td>별점</td>
          </tr>
          <tr>
            <tH>이용날짜</th>
            <td>이용날짜</td>
          </tr>
            </table>		
          <div>
        </div>
        </div>
        </div>
        </div>
  <div class="site-section">
    <div class="container">
      <div class="row mb-5 justify-content-center" style="margin-left: 0px;margin-right: 500px;">
        <div class="col-7 text-center">
          <div class="heading">
        		<table id="products" border="1" style="width: 802.5px;height: 502.5px;margin-left:150px;">
  <thead>
    <tr>
      <th style="width: 100px;">글번호</th>
      <th style="width: 150px;">작성자</th>
      <th style="width: 300px;">이미지</th>
      <th style="width: 150px;">별점</th>
      <th style="width: 150px;">날짜</th>
    </tr>
  </thead>
  <tbody>
  <!--  반복문으로 사용 -->
    <tr>
      <td>1</td>
      <td><a href="customer_hugi_detail_look_yj.do">작성자</a></td>
      <td><img src="resources/images/svg/svg/001-elderly.svg" alt="Image" class="img-fluid"></td>
      <td>별점</td>
      <td>날짜</td>
    </tr>
    <tr>
      <td>2</td>
      <td><a href="customer_hugi_detail_look_yj.do">작성자</a></td>
      <td><img src="resources/images/svg/svg/001-elderly.svg" alt="Image" class="img-fluid"></td>
      <td>별점</td>
      <td>날짜</td>
    </tr>
    <tr>
      <td>3</td>
      <td><a href="customer_hugi_detail_look_yj.do">작성자</a></td>
      <td><img src="resources/images/svg/svg/001-elderly.svg" alt="Image" class="img-fluid"></td>
      <td>별점</td>
      <td>날짜</td>
    </tr>
    <tr>
      <td>4</td>
      <td><a href="customer_hugi_detail_look_yj.do">작성자</a></td>
      <td><img src="resources/images/svg/svg/001-elderly.svg" alt="Image" class="img-fluid"></td>
      <td>별점</td>
      <td>날짜</td>
    </tr>
    <tr>
      <td>5</td>
      <td><a href="customer_hugi_detail_look_yj.do">작성자</a></td>
      <td><img src="resources/images/svg/svg/001-elderly.svg" alt="Image" class="img-fluid"></td>
      <td>별점</td>
      <td>날짜</td>
    </tr>
    <tr>
      <td>6</td>
      <td><a href="customer_hugi_detail_look_yj.do">작성자</a></td>
      <td><img src="resources/images/svg/svg/001-elderly.svg" alt="Image" class="img-fluid"></td>
      <td>별점</td>
      <td>날짜</td>
    </tr>
    <tr>
      <td>7</td>
      <td><a href="customer_hugi_detail_look_yj.do">작성자</a></td>
      <td><img src="resources/images/svg/svg/001-elderly.svg" alt="Image" class="img-fluid"></td>
      <td>별점</td>
      <td>날짜</td>
    </tr>
    <tr>
      <td>8</td>
      <td><a href="customer_hugi_detail_look_yj.do">작성자</a></td>
      <td><img src="resources/images/svg/svg/001-elderly.svg" alt="Image" class="img-fluid"></td>
      <td>별점</td>
      <td>날짜</td>
    </tr>
    <tr>
      <td>9</td>
      <td><a href="customer_hugi_detail_look_yj.do">작성자</a></td>
      <td><img src="resources/images/svg/svg/001-elderly.svg" alt="Image" class="img-fluid"></td>
      <td>별점</td>
      <td>날짜</td>
    </tr>
    <tr>
      <td>10</td>
      <td><a href="customer_hugi_detail_look_yj.do">작성자</a></td>
      <td><img src="resources/images/svg/svg/001-elderly.svg" alt="Image" class="img-fluid"></td>
      <td>별점</td>
      <td>날짜</td>
    </tr>
  </tbody>
	</tbody>
	</table>	
	</div>
	</div>
	</div>
	</div>
	</div>
    </div>
    </div>
     <form action="" id="setRows">		        	    
            <p>
        		<input type="hidden" name="rowPerPage" value="3">
     		 </p>
      		</form>




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
<script src="resources/js/star.js"></script>
<Script></Script>


</body>
</html>