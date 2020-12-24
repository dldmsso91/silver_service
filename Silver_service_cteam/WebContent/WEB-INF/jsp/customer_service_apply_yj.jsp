<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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
                        <li><a href="guide_walk_apply_yj">외출도우미 지원하기</a></li>
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

    </header>



    <!-- MAIN -->


    <div id="test" class="slide-item overlay">

    </div>





<form method="post" action="customer_apply">
	<input type="hidden" name="u_no" value="${member.u_no}"/>    
    <div class="layer" >

          <div class="layer_inner">
         <h1>서비스 신청하기</h1>
         <div class="My_Image">
         <img src="resources/images/img_3_sq.jpg" alt="My Image">      
         </div>
            <table class="ui celled table" style="width: 1000px;margin: auto; border=1">
  		         
            <tr><td rowspan="10">기본정보</td></tr>            
               <tr>
               <td>서비스 종류</td>
               <td>
               		<input type="radio" name="giver_type" value="간병도우미">간병도우미&nbsp;&nbsp;&nbsp;
               		<input type="radio" name="giver_type" value="산책도우미">산책도우미&nbsp;&nbsp;&nbsp;
               		<input type="radio" name="giver_type" value="생활도우미">생활도우미
               </td>
               </tr>
              <tr>         
               <td>희망 장소</td> 
               <td>
               <input type="text" name="hope_service_place" style="width: 40%" value=""/>       
               </td>
              </tr>
               <tr>
               <td>
                  예상급여
                </td>
                <td>
                  일급 : <input type="text" name="hope_salary" style="width: 30%; value=""/>원
                </td>
           </tr>            
            <tr>
            <td>현재 상태</td>
             <td>
             	<input type="checkbox" name="my_condition" value="재활">재활&nbsp;&nbsp;&nbsp;
             	<input type="checkbox" name="my_condition" value="암">암&nbsp;&nbsp;&nbsp;
             	<input type="checkbox" name="my_condition" value="치매">치매&nbsp;&nbsp;&nbsp;
             	<input type="checkbox" name="my_condition" value="정신질환">정신질환&nbsp;&nbsp;&nbsp;
             	<input type="checkbox" name="my_condition" value="실명">실명&nbsp;&nbsp;&nbsp;
             	<input type="checkbox" name="my_condition" value="전염병">전염병&nbsp;&nbsp;&nbsp;
             	<input type="checkbox" name="my_condition" value="욕창">욕창&nbsp;&nbsp;&nbsp;
             	<input type="checkbox" name="my_condition" value="의식불명">의식불명&nbsp;&nbsp;&nbsp;
             	<input type="checkbox" name="my_condition" value="기타">기타
             </td>
               </tr>
            <tr>
            <td>알러지 유무</td>
             <td>
             	<input type="checkbox" name="my_allergy" value="땅콩">땅콩&nbsp;&nbsp;&nbsp;
             	<input type="checkbox" name="my_allergy" value="밀가루">밀가루&nbsp;&nbsp;&nbsp;
             	<input type="checkbox" name="my_allergy" value="해산물">해산물&nbsp;&nbsp;&nbsp;
             	<input type="checkbox" name="my_allergy" value="달걀">달걀&nbsp;&nbsp;&nbsp;
             	<input type="checkbox" name="my_allergy" value="강아지">강아지&nbsp;&nbsp;&nbsp;
             	<input type="checkbox" name="my_allergy" value="고양이">고양이&nbsp;&nbsp;&nbsp;
             	<input type="checkbox" name="my_allergy" value="기타">기타&nbsp;&nbsp;&nbsp;
             	<input type="checkbox" name="my_allergy" value="없음">없음
             </td>
               </tr>               
               <tr>
               <td>거동여부</td>
               <td>
                           <input type='radio' name='can_walk' value='거동가능' />거동가능&nbsp;&nbsp;&nbsp;
                           <input type='radio' name='can_walk' value='거동불가능' />거동불가능
               </td>
               </tr>
               
            <tr>
			<td>예약 희망 날짜</td>
			<td>
			<input type='date' name='hope_start_date'/>부터
			<input type='date' name='hope_finish_date'/>까지		
			</td>
			</tr>     
         <tr>
         <td>희망시간</td>
         <td>
                  <select name="hope_start_servicetime" id="hope_start_servicetime" class="select_css03">
                     <option value="">시작시간</option>                                                                                                                                                                                                                          
                     <option value="08:00" style="background:#CCFFFF;">08:00</option>                                                                                                                                 
                     <option value="09:00" style="background:#CCFFFF;">09:00</option>                                                                                                                                 
                     <option value="10:00" style="background:#CCFFFF;">10:00</option>                                                                                                                                 
                     <option value="11:00" style="background:#CCFFFF;">11:00</option>                                                                                                                                 
                     <option value="12:00" style="background:#CCFFFF;">12:00</option>                                                                                                                                 
                     <option value="13:00" style="background:#FFCC99;">13:00</option>                                                                                                                                 
                     <option value="14:00" style="background:#FFCC99;">14:00</option>                                                                                                                                 
                     <option value="15:00" style="background:#FFCC99;">15:00</option>                                                                                                                          
                     <option value="16:00" style="background:#FFCC99;">16:00</option>                                                                                                                                 
                     <option value="17:00" style="background:#FFCC99;">17:00</option>                                                                                                                                 
  					 <option value="18:00" style="background:#FFCC99;">18:00</option> 
                  </select>부터&nbsp;&nbsp;

                  <select name="hope_end_servicetime" id="hope_end_servicetime" class="select_css03">
                     <option value="">종료시간</option>                                                                                                                                 
                     <option value="09:00" style="background:#CCFFFF;">09:00</option>                                                                                                                                 
                     <option value="10:00" style="background:#CCFFFF;">10:00</option>                                                                                                                                 
                     <option value="11:00" style="background:#CCFFFF;">11:00</option>                                                                                                                                 
                     <option value="12:00" style="background:#CCFFFF;">12:00</option>                                                                                                                                 
                     <option value="13:00" style="background:#FFCC99;">13:00</option>                                                                                                                                 
                     <option value="14:00" style="background:#FFCC99;">14:00</option>                                                                                                                                 
                     <option value="15:00" style="background:#FFCC99;">15:00</option>                                                                                                                          
                     <option value="16:00" style="background:#FFCC99;">16:00</option>                                                                                                                                 
                     <option value="17:00" style="background:#FFCC99;">17:00</option>                                                                                                                                 
  					 <option value="18:00" style="background:#FFCC99;">18:00</option>
                     <option value="19:00" style="background:#FFCC99;">19:00</option>  					 
                  </select> 까지
            </td>
            </tr>
         </table>
            <div class="button_div">
            	<p><input type="submit" value="작성" class="btn btn-primary"></p>   
<!--                  <p><a href="recommend_service_en" class="btn btn-primary">작성</a></p>   -->  
                  <p><a href="index" class="btn btn-primary">취소</a></p>               
            </div>
          </div>
       </div>
    </form>

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
<script></script>

</body>
</html>