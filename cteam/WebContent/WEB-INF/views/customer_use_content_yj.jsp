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
<style>
.table{    

   width: 45%;
    margin-bottom: 1rem;
    text-align: center;
    margin: 0 auto;
    margin-top: 50px;}
.layer{
    text-align: center;
    margin-top: 25px;
}
.button_div{
    display: inline-flex;
    width: 15%;
    margin: 0 auto;
    margin-top: 20px;
}
.button_div input{
    margin-left: 1%;
    margin-right: 1%;
}
.button_div a{

}
.button_div p{
margin: 0 auto;
}

.My_Image{
    width: 150px;
    overflow: hidden;
    height: 160px;
    border-radius: 30px;
    margin: 0 auto;
    margin-top: 40px;
}
.My_Image img{
    width: 100%;
}


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
    
#worktime{
width:100px;
    background-color: green;
    border: none;
    color:#fff;
    padding: 15px 0;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 15px;
    margin: 27px;
    cursor: pointer;
    border-radius:10px;
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
                        <li><a href="guide_nursing_apply_yj.do">생활도우미 지원하기</a></li>
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



    <!-- MAIN -->



    <div id="test" class="slide-item overlay">

    </div>
    <h3 style="margin-left: 620px;">서비스 이용내역</h3>
                  		<table border="1" style='width: 802.5px;margin-left: 620px;'>
  <tbody>
  <!--  반복문으로 사용 -->
       <tr>
      <td><img src="resources/images/svg/svg/001-elderly.svg" alt="Image" class="img-fluid" style="width: 250px;"></td>
      <td style="width:200px;">
      	<p>김길동</p>
      	<p>경기도 전역(인천)|서울전체</p>
						<p id="star_grade">
						        <a href="#">★</a>
						        <a href="#">★</a>
						        <a href="#">★</a>
						        <a href="#">★</a>
						        <a href="#">★</a>
						</p>
      </td>
      <td style="width:200px;">2020.12.01</td>
      <td> <div class="button_div">
                  <p><a href="customer_hugi_write_yj.do" class="btn btn-primary" style="width: 150px;"> 후기 쓰기</a></p>   
                  <p><a href="customer_service_apply_yj.do" class="btn btn-primary" style="width: 150px;">재신청</a></p></div></td>
    </tr>
       
       <tr>
      <td><img src="resources/images/svg/svg/001-elderly.svg" alt="Image" class="img-fluid" style="width: 250px;"></td>
      <td style="width:200px;">
      	<p>김길동</p>
      	<p>경기도 전역(인천)|서울전체</p>
						<p id="star_grade">
						        <a href="#">★</a>
						        <a href="#">★</a>
						        <a href="#">★</a>
						        <a href="#">★</a>
						        <a href="#">★</a>
						</p>
      </td>
      <td style="width:200px;">2020.12.01</td>
      <td> <div class="button_div">
                  <p><a href="customer_hugi_write_yj.do" class="btn btn-primary" style="width: 150px;"> 후기 쓰기</a></p>   
                  <p><a href="customer_service_apply_yj.do" class="btn btn-primary" style="width: 150px;">재신청</a></p></div></td>
    </tr>
       <tr>
      <td><img src="resources/images/svg/svg/001-elderly.svg" alt="Image" class="img-fluid" style="width: 250px;"></td>
      <td style="width:200px;">
      	<p>김길동</p>
      	<p>경기도 전역(인천)|서울전체</p>
						<p id="star_grade">
						        <a href="#">★</a>
						        <a href="#">★</a>
						        <a href="#">★</a>
						        <a href="#">★</a>
						        <a href="#">★</a>
						</p>
      </td>
      <td style="width:200px;">2020.12.01</td>
      <td> <div class="button_div">
                  <p><a href="customer_hugi_write_yj.do" class="btn btn-primary" style="width: 150px;"> 후기 쓰기</a></p>   
                  <p><a href="customer_service_apply_yj.do" class="btn btn-primary" style="width: 150px;">재신청</a></p></div></td>
    </tr>
       <tr>
      <td><img src="resources/images/svg/svg/001-elderly.svg" alt="Image" class="img-fluid" style="width: 250px;"></td>
      <td style="width:200px;">
      	<p>김길동</p>
      	<p>경기도 전역(인천)|서울전체</p>
						<p id="star_grade">
						        <a href="#">★</a>
						        <a href="#">★</a>
						        <a href="#">★</a>
						        <a href="#">★</a>
						        <a href="#">★</a>
						</p>
      </td>
      <td style="width:200px;">2020.12.01</td>
      <td> <div class="button_div">
                  <p><a href="customer_hugi_write_yj.do" class="btn btn-primary" style="width: 150px;"> 후기 쓰기</a></p>   
                  <p><a href="customer_service_apply_yj.do" class="btn btn-primary" style="width: 150px;">재신청</a></p></div></td>
    </tr>
       <tr>
      <td><img src="resources/images/svg/svg/001-elderly.svg" alt="Image" class="img-fluid" style="width: 250px;"></td>
      <td style="width:200px;">
      	<p>김길동</p>
      	<p>경기도 전역(인천)|서울전체</p>
						<p id="star_grade">
						        <a href="#">★</a>
						        <a href="#">★</a>
						        <a href="#">★</a>
						        <a href="#">★</a>
						        <a href="#">★</a>
						</p>
      </td>
      <td style="width:200px;">2020.12.01</td>
      <td> <div class="button_div">
                  <p><a href="customer_hugi_write_yj.do" class="btn btn-primary" style="width: 150px;"> 후기 쓰기</a></p>   
                  <p><a href="customer_service_apply_yj.do" class="btn btn-primary" style="width: 150px;">재신청</a></p></div></td>
    </tr>
       <tr>
      <td><img src="resources/images/svg/svg/001-elderly.svg" alt="Image" class="img-fluid" style="width: 250px;"></td>
      <td style="width:200px;">
      	<p>김길동</p>
      	<p>경기도 전역(인천)|서울전체</p>
						<p id="star_grade">
						        <a href="#">★</a>
						        <a href="#">★</a>
						        <a href="#">★</a>
						        <a href="#">★</a>
						        <a href="#">★</a>
						</p>
      </td>
      <td style="width:200px;">2020.12.01</td>
      <td> <div class="button_div">
                  <p><a href="customer_hugi_write_yj.do" class="btn btn-primary" style="width: 150px;"> 후기 쓰기</a></p>   
                  <p><a href="customer_service_apply_yj.do" class="btn btn-primary" style="width: 150px;">재신청</a></p></div></td>
    </tr>
       <tr>
      <td><img src="resources/images/svg/svg/001-elderly.svg" alt="Image" class="img-fluid" style="width: 250px;"></td>
      <td style="width:200px;">
      	<p>김길동</p>
      	<p>경기도 전역(인천)|서울전체</p>
						<p id="star_grade">
						        <a href="#">★</a>
						        <a href="#">★</a>
						        <a href="#">★</a>
						        <a href="#">★</a>
						        <a href="#">★</a>
						</p>
      </td>
      <td style="width:200px;">2020.12.01</td>
      <td> <div class="button_div">
                  <p><a href="customer_hugi_write_yj.do" class="btn btn-primary" style="width: 150px;"> 후기 쓰기</a></p>   
                  <p><a href="customer_service_apply_yj.do" class="btn btn-primary" style="width: 150px;">재신청</a></p></div></td>
    </tr>
       <tr>
      <td><img src="resources/images/svg/svg/001-elderly.svg" alt="Image" class="img-fluid" style="width: 250px;"></td>
      <td style="width:200px;">
      	<p>김길동</p>
      	<p>경기도 전역(인천)|서울전체</p>
						<p id="star_grade">
						        <a href="#">★</a>
						        <a href="#">★</a>
						        <a href="#">★</a>
						        <a href="#">★</a>
						        <a href="#">★</a>
						</p>
      </td>
      <td style="width:200px;">2020.12.01</td>
      <td> <div class="button_div">
                  <p><a href="customer_hugi_write_yj.do" class="btn btn-primary" style="width: 150px;"> 후기 쓰기</a></p>   
                  <p><a href="customer_service_apply_yj.do" class="btn btn-primary" style="width: 150px;">재신청</a></p></div></td>
    </tr>
       <tr>
      <td><img src="resources/images/svg/svg/001-elderly.svg" alt="Image" class="img-fluid" style="width: 250px;"></td>
      <td style="width:200px;">
      	<p>김길동</p>
      	<p>경기도 전역(인천)|서울전체</p>
						<p id="star_grade">
						        <a href="#">★</a>
						        <a href="#">★</a>
						        <a href="#">★</a>
						        <a href="#">★</a>
						        <a href="#">★</a>
						</p>
      </td>
      <td style="width:200px;">2020.12.01</td>
      <td> <div class="button_div">
                  <p><a href="customer_hugi_write_yj.do" class="btn btn-primary" style="width: 150px;"> 후기 쓰기</a></p>   
                  <p><a href="customer_service_apply_yj.do" class="btn btn-primary" style="width: 150px;">재신청</a></p></div></td>
    </tr>
       <tr>
      <td><img src="resources/images/svg/svg/001-elderly.svg" alt="Image" class="img-fluid" style="width: 250px;"></td>
      <td style="width:200px;">
      	<p>김길동</p>
      	<p>경기도 전역(인천)|서울전체</p>
						<p id="star_grade">
						        <a href="#">★</a>
						        <a href="#">★</a>
						        <a href="#">★</a>
						        <a href="#">★</a>
						        <a href="#">★</a>
						</p>
      </td>
      <td style="width:200px;">2020.12.01</td>
      <td> <div class="button_div">
                  <p><a href="customer_hugi_write_yj.do" class="btn btn-primary" style="width: 150px;"> 후기 쓰기</a></p>   
                  <p><a href="customer_service_apply_yj.do" class="btn btn-primary" style="width: 150px;">재신청</a></p></div></td>
    </tr>
       
  </tbody>
	</tbody>
	</table>	
     <form action="" id="setRows">		        	    
            <p>
        		<input type="hidden" name="rowPerPage" value="3">
     		 </p>
     		 </form>
	<h2>추천 도우미 탐색하기</h2>

	<form>
		<div class='bxslider_area'>
			<ul class="bxslider">
			  <li>
			  <img src="resources/images/1.jpg" />
		      <h3>이문자</h3>
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
  		      <h5>도우미에 대한 평가</h5>	
			  <div class="starRev">
				  <span class="starR on">별1</span>
				  <span class="starR">별2</span>
				  <span class="starR">별3</span>
				  <span class="starR">별4</span>
				  <span class="starR">별5</span>
			  </div>
			<a href="test.do" class="btn btn-primary">신청하기</a>
			  </li>
			  <li>
			  <img src="resources/images/2.jpg"/>
		      <h3>이요롱</h3>
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
  		      <h5>도우미에 대한 평가</h5>	
  			  <div class="starRev">
				  <span class="starR on">별1</span>
				  <span class="starR">별2</span>
				  <span class="starR">별3</span>
				  <span class="starR">별4</span>
				  <span class="starR">별5</span>
			  </div>
			<a href="test.do" class="btn btn-primary">신청하기</a>
			  </li>
			  <li>
			  <img src="resources/images/3.jpg" />
		      <h3>김애용</h3>
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
  		      <h5>도우미에 대한 평가</h5>	
  			  <div class="starRev">
				  <span class="starR on">별1</span>
				  <span class="starR">별2</span>
				  <span class="starR">별3</span>
				  <span class="starR">별4</span>
				  <span class="starR">별5</span>
			  </div>	
			<a href="test.do" class="btn btn-primary">신청하기</a>			  		  
			  </li>
			  <li>
			  <img src="resources/images/1.jpg" />
		      <h3>이문자</h3>
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
  		      <h5>도우미에 대한 평가</h5>	
			  <div class="starRev">
				  <span class="starR on">별1</span>
				  <span class="starR">별2</span>
				  <span class="starR">별3</span>
				  <span class="starR">별4</span>
				  <span class="starR">별5</span>
			  </div>
			<a href="test.do" class="btn btn-primary">신청하기</a>
			  </li>
			  <li>
			  <img src="resources/images/2.jpg"/>
		      <h3>이요롱</h3>
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
  		      <h5>도우미에 대한 평가</h5>	
  			  <div class="starRev">
				  <span class="starR on">별1</span>
				  <span class="starR">별2</span>
				  <span class="starR">별3</span>
				  <span class="starR">별4</span>
				  <span class="starR">별5</span>
			  </div>
			<a href="test.do" class="btn btn-primary">신청하기</a>
			  </li>
			  <li>
				  <img src="resources/images/3.jpg" />
			      <h3>김애용</h3>
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
  		      <h5>도우미에 대한 평가</h5>	
	  			  <div class="starRev">
				  <span class="starR on">별1</span>
				  <span class="starR">별2</span>
				  <span class="starR">별3</span>
				  <span class="starR">별4</span>
				  <span class="starR">별5</span>
			  </div>			  
				<a href="test.do" class="btn btn-primary">신청하기</a>		  
			  </li>
			</ul>
		</div>
	</form>



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