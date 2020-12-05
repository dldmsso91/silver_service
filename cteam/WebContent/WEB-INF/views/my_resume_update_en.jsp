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

<script src="https://code.jquery.com/jquery-3.4.1.js"   
	integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="   
	crossorigin="anonymous">
</script>

    <script type="text/javascript">

    $(function(){
	    $('#update').click(function(){
	    	var result = confirm('정말 수정하시겠습니까?'); 

	    	if(result){ 

		    	location.replace('index.do');
		    	alert("수정되었습니다");
		    	} 

		    else{  }

		    });
        });

    </script>

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





<form action="POST" class='wirtehugi'>
    <div class="layer" >

          <div class="layer_inner">
         <h1>생활도우미 지원하기</h1>
         <div class="My_Image">
         <img src="resources/images/1.jpg" alt="My Image">      
         </div>
            <table class="ui celled table">
            <tr><td rowspan="5">기본정보</td></tr>
            <tr>
               <td>이름</td>
               <td><input type='text' name='name' style="width: 30%;" /></td>
            </tr>
            <tr>
               <td>나이</td>
                  <td>
                     <p><select name="age"  style="width: 30%;">
                     <!--  반복문으로 현재 날짜부터 90년전까지만 출력 -->
                     <option></option>
                     <option></option>
                     <option></option>
                     <option></option>
                     <option></option>
                     </select></p>
                   </td>
            </tr>
            <tr>
               <td> 성별 </td>
               <td> 
                                  <input type='radio' name='gender' value='Male' />남자&nbsp;&nbsp;&nbsp;
                           <input type='radio' name='gender' value='Female' />여자
                 </td>
               </tr>            
                  <tr>
                     <td>주소</td>
                     <td><input type="text" name="address"  style="width: 30%;"></td>
                  </tr>
            <tr>
               <td rowspan="8">추가정보</td>
               </tr>                  
               <td class="td01">출퇴근형<br>희망근무지역</td> 
               <td>                 
                  <span class="tit01">1지망
                     <select name="area1_search" id="area1_search" onchange="change_renew_commute1(this.selectedIndex);" class="select_css03 w20p">
                        <option value="">시/도</option>
                        <option value="서울">서울</option><option value="경기">경기</option><option value="부산">부산</option><option value="인천">인천</option><option value="강원">강원</option><option value="경남">경남</option><option value="경북">경북</option><option value="광주">광주</option><option value="대구">대구</option><option value="대전">대전</option><option value="세종">세종</option><option value="울산">울산</option><option value="전남">전남</option><option value="전북">전북</option><option value="제주">제주</option><option value="충남">충남</option><option value="충북">충북</option><option value="해외">해외</option>
                     </select>
                     <select name="area2_search" id="area2_search" class="select_css03 w30p">
                        <option value="">구/군</option>
                     </select>
                     <input type="text" name="area2_search_text" id="area2_search_text" class="inbor1" value="" style="width: 70px; display: none">
                  </span> 
               <br>
                  <span class="tit01">2지망
                     <select name="area4_search" id="area4_search" onchange="change_renew_commute2(this.selectedIndex);" class="select_css03 w20p">
                        <option value="">시/도</option>
                        <option value="서울">서울</option><option value="경기">경기</option><option value="부산">부산</option><option value="인천">인천</option><option value="강원">강원</option><option value="경남">경남</option><option value="경북">경북</option><option value="광주">광주</option><option value="대구">대구</option><option value="대전">대전</option><option value="세종">세종</option><option value="울산">울산</option><option value="전남">전남</option><option value="전북">전북</option><option value="제주">제주</option><option value="충남">충남</option><option value="충북">충북</option><option value="해외">해외</option>
                     </select>
                     <select name="area5_search" id="area5_search" class="select_css03 w30p">
                        <option value="">구/군</option>
                     </select>
                     <input type="text" name="area_5_search_text" id="area5_search_text" value="" class="inbor1" style="width: 70px; display: none">
                  </span> 
               <br>
                  <span class="tit01">3지망
                     <select name="area6_search" id="area6_search" onchange="change_renew_commute3(this.selectedIndex);" class="select_css03 w20p">
                        <option value="">시/도</option>
                        <option value="서울">서울</option><option value="경기">경기</option><option value="부산">부산</option><option value="인천">인천</option><option value="강원">강원</option><option value="경남">경남</option><option value="경북">경북</option><option value="광주">광주</option><option value="대구">대구</option><option value="대전">대전</option><option value="세종">세종</option><option value="울산">울산</option><option value="전남">전남</option><option value="전북">전북</option><option value="제주">제주</option><option value="충남">충남</option><option value="충북">충북</option><option value="해외">해외</option>
                     </select>
                     <select name="area7_search" id="area7_search" class="select_css03 w30p">
                        <option value="">구/군</option>
                     </select>
                     <input type="text" name="area7_search_text" id="area7_search_text" value="" class="inbor1" style="width: 70px; display: none;">
                  </span> 
               <div style="margin: 10px 0 5px 30px; display: none" id="all_area_view">
                  <label><input type="checkbox" value="1" name="all_area">
                  <span id="all_area_name"></span>지역전체
                  <span style="color: #FF0000">(희망근무지역 1,2,3지망 위주로 채용자에게 알림이 나갑니다.)</span></label>
               </div>
            </td>
         <tr>
            <td>경력</td>
            <td>
               <select name="carrer"  style="width: 25%;" >
                  <option></option>
                  <option value="1">1</option>
                  <option value="2">2</option>
                  <option value="3">3</option>
                  <option value="4">4</option>
                  <option value="5">5</option>
                  <option value="6">6</option>
                  <option value="7">7</option>
                  <option value="8">8</option>
                  <option value="9">9</option>
                  <option value="10">10</option>
               </select>년
            </td>
         </tr>
      <tr>
         <td>근무시간</td>
         <td>
            <div class="r_time1">
               <input type="hidden" class="r_time_v" name="r_time" id="r_time" value="">
               <script type="text/javascript">
                  $(document).ready(function() {
                     var b_val = $("#r_time").val();
                     $(".r_b_time").click(function() {
                        if ($(this).hasClass("on")) {
                           $(this).removeClass("on");
                        } else {
                           $(this).addClass("on");
                        }
   
                        var re_val = "";
                        var r_b_time_text_chk = "";
                        $(".r_b_time.on").each(function() {
                           // re_val 변수가 비어있을때
                           if (re_val != "") {
                              re_val += "," + $(this).data("val");
                           } else {
                              re_val += $(this).data("val");
                           }
   
                           if ($(this).data("val") == "1005") {
                              r_b_time_text_chk = "y";
                           }
                        });
   
                        if (r_b_time_text_chk == "y") {
                           $("#r_time_text").show();
                        } else {
                           $("#r_time_text").hide();
                        }
   
                        $("#r_time").val(re_val);
                     });
   
                     if ($(".r_b_time").eq(4).hasClass("on") == true) {
                        $("#r_time_text").show();
                     }
                  });
               </script>
               <span id="r_time_text">
                  <select name="r_time_start" id="r_time_start" class="select_css03">
                     <option value="">시작시간</option>
                     <optgroup label="오전">                                                                                          
                     <option value="01:00" style="background:#CCFFFF;">오전 1:00</option>                                                                                                                                                                                                   
                     <option value="01:30" style="background:#CCFFFF;">오전 1:30</option>                                                                                                                                 
                     <option value="02:00" style="background:#CCFFFF;">오전 2:00</option>                                                                                                                                 
                     <option value="02:30" style="background:#CCFFFF;">오전 2:30</option>                                                                                                                                 
                     <option value="03:00" style="background:#CCFFFF;">오전 3:00</option>                                                                                                                                 
                     <option value="03:30" style="background:#CCFFFF;">오전 3:30</option>                                                                                                                                 
                     <option value="04:00" style="background:#CCFFFF;">오전 4:00</option>                                                                                                                                 
                     <option value="04:30" style="background:#CCFFFF;">오전 4:30</option>                                                                                                                                 
                     <option value="05:00" style="background:#CCFFFF;">오전 5:00</option>                                                                                                                                 
                     <option value="05:30" style="background:#CCFFFF;">오전 5:30</option>                                                                                                                                 
                     <option value="06:00" style="background:#CCFFFF;">오전 6:00</option>                                                                                                                                 
                     <option value="06:30" style="background:#CCFFFF;">오전 6:30</option>                                                                                                                                 
                     <option value="07:00" style="background:#CCFFFF;">오전 7:00</option>                                                                                                                                 
                     <option value="07:30" style="background:#CCFFFF;">오전 7:30</option>                                                                                                                                 
                     <option value="08:00" style="background:#CCFFFF;">오전 8:00</option>                                                                                                                                 
                     <option value="08:30" style="background:#CCFFFF;">오전 8:30</option>                                                                                                                                 
                     <option value="09:00" style="background:#CCFFFF;">오전 9:00</option>                                                                                                                                 
                     <option value="09:30" style="background:#CCFFFF;">오전 9:30</option>                                                                                                                                 
                     <option value="10:00" style="background:#CCFFFF;">오전 10:00</option>                                                                                                                                 
                     <option value="10:30" style="background:#CCFFFF;">오전 10:30</option>                                                                                                                                 
                     <option value="11:00" style="background:#CCFFFF;">오전 11:00</option>                                                                                                                                 
                     <option value="11:30" style="background:#CCFFFF;">오전 11:30</option>                                                                                    
                     </optgroup><optgroup label="오후">                                             
                     <option value="12:00" style="background:#FFCC99;">낮 12:00</option>                                                                                                                                 
                     <option value="12:30" style="background:#FFCC99;">낮 12:30</option>                                                                                                                                 
                     <option value="13:00" style="background:#FFCC99;">오후 1:00</option>                                                                                                                                 
                     <option value="13:30" style="background:#FFCC99;">오후 1:30</option>                                                                                                                                 
                     <option value="14:00" style="background:#FFCC99;">오후 2:00</option>                                                                                                                                 
                     <option value="14:30" style="background:#FFCC99;">오후 2:30</option>                                                                                                                                 
                     <option value="15:00" style="background:#FFCC99;">오후 3:00</option>                                                                                                                                 
                     <option value="15:30" style="background:#FFCC99;">오후 3:30</option>                                                                                                                                 
                     <option value="16:00" style="background:#FFCC99;">오후 4:00</option>                                                                                                                                 
                     <option value="16:30" style="background:#FFCC99;">오후 4:30</option>                                                                                                                                 
                     <option value="17:00" style="background:#FFCC99;">오후 5:00</option>                                                                                                                                 
                     <option value="17:30" style="background:#FFCC99;">오후 5:30</option>                                                                                                                                 
                     <option value="18:00" style="background:#FFCC99;">오후 6:00</option>                                                                                                                                 
                     <option value="18:30" style="background:#FFCC99;">오후 6:30</option>                                                                                                                                 
                     <option value="19:00" style="background:#FFCC99;">오후 7:00</option>                                                                                                                                 
                     <option value="19:30" style="background:#FFCC99;">오후 7:30</option>                                                                                                                                 
                     <option value="20:00" style="background:#FFCC99;">오후 8:00</option>                                                                                                                                 
                     <option value="20:30" style="background:#FFCC99;">오후 8:30</option>                                                                                                                                 
                     <option value="21:00" style="background:#FFCC99;">오후 9:00</option>                                                                                                                                 
                     <option value="21:30" style="background:#FFCC99;">오후 9:30</option>                                                                                                                                 
                     <option value="22:00" style="background:#FFCC99;">오후 10:00</option>                                                                                                                                 
                     <option value="22:30" style="background:#FFCC99;">오후 10:30</option>                                                                                                                                 
                     <option value="23:00" style="background:#FFCC99;">오후 11:00</option>                                                                                                                                 
                     <option value="23:30" style="background:#FFCC99;">오후 11:30</option>                                                                                                                                 
                     <option value="00:00" style="background:#FFCC99;">밤 12:00</option>                                                                                                                                 
                     <option value="00:30" style="background:#FFCC99;">밤 12:30</option>
                     </optgroup>
                  </select>부터&nbsp;&nbsp;

                  <select name="r_time_end" id="r_time_end" class="select_css03">
                     <option value="">종료시간</option>
                     <optgroup label="오후">
                     <option value="12:00" style="background: #FFCC99">낮 12:00</option>
                     <option value="12:30" style="background: #FFCC99">낮 12:30</option>
                     <option value="13:00" style="background: #FFCC99">오후 1:00</option>
                     <option value="13:30" style="background: #FFCC99">오후 1:30</option>
                     <option value="14:00" style="background: #FFCC99">오후 2:00</option>
                     <option value="14:30" style="background: #FFCC99">오후 2:30</option>
                     <option value="15:00" style="background: #FFCC99">오후 3:00</option>
                     <option value="15:30" style="background: #FFCC99">오후 3:30</option>
                     <option value="16:00" style="background: #FFCC99">오후 4:00</option>
                     <option value="16:30" style="background: #FFCC99">오후 4:30</option>
                     <option value="17:00" style="background: #FFCC99">오후 5:00</option>
                     <option value="17:30" style="background: #FFCC99">오후 5:30</option>
                     <option value="18:00" style="background: #FFCC99">오후 6:00</option>
                     <option value="18:30" style="background: #FFCC99">오후 6:30</option>
                     <option value="19:00" style="background: #FFCC99">오후 7:00</option>
                     <option value="19:30" style="background: #FFCC99">오후 7:30</option>
                     <option value="20:00" style="background: #FFCC99">오후 8:00</option>
                     <option value="20:30" style="background: #FFCC99">오후 8:30</option>
                     <option value="21:00" style="background: #FFCC99">오후 9:00</option>
                     <option value="21:30" style="background: #FFCC99">오후 9:30</option>
                     <option value="22:00" style="background: #FFCC99">오후 10:00</option>
                     <option value="22:30" style="background: #FFCC99">오후 10:30</option>
                     <option value="23:00" style="background: #FFCC99">오후 11:00</option>
                     <option value="23:30" style="background: #FFCC99">오후 11:30</option>
                     <option value="00:00" style="background: #FFCC99">밤 12:00</option>
                     <option value="00:30" style="background: #FFCC99">밤 12:30</option>
                     </optgroup>
                     <optgroup>
                     <option value="01:00" style="background: #CCFFFF">오전 1:00</option>
                     <option value="01:30" style="background: #CCFFFF">오전 1:30</option>
                     <option value="02:00" style="background: #CCFFFF">오전 2:00</option>
                     <option value="02:30" style="background: #CCFFFF">오전 2:30</option>
                     <option value="03:00" style="background: #CCFFFF">오전 3:00</option>
                     <option value="03:30" style="background: #CCFFFF">오전 3:30</option>
                     <option value="04:00" style="background: #CCFFFF">오전 4:00</option>
                     <option value="04:30" style="background: #CCFFFF">오전 4:30</option>
                     <option value="05:00" style="background: #CCFFFF">오전 5:00</option>
                     <option value="05:30" style="background: #CCFFFF">오전 5:30</option>
                     <option value="06:00" style="background: #CCFFFF">오전 6:00</option>
                     <option value="06:30" style="background: #CCFFFF">오전 6:30</option>
                     <option value="07:00" style="background: #CCFFFF">오전 7:00</option>
                     <option value="07:30" style="background: #CCFFFF">오전 7:30</option>
                     <option value="08:00" style="background: #CCFFFF">오전 8:00</option>
                     <option value="08:30" style="background: #CCFFFF">오전 8:30</option>
                     <option value="09:00" style="background: #CCFFFF">오전 9:00</option>
                     <option value="09:30" style="background: #CCFFFF">오전 9:30</option>
                     <option value="10:00" style="background: #CCFFFF">오전 10:00</option>
                     <option value="10:30" style="background: #CCFFFF">오전 10:30</option>
                     <option value="11:00" style="background: #CCFFFF">오전 11:00</option>
                     <option value="11:30" style="background: #CCFFFF">오전 11:30</option>
                     </optgroup>
                  </select> 까지
               </span>

            </div>
            </td>
            </tr>
               <tr>
                  <td>
                  희망급여
                  </td>
                  <td>
                     <input type="radio" name="salay" value="timesalary">시간제&nbsp;&nbsp;&nbsp;
                     <input type="radio" name="salay" value="salary">월급제
                  </td>
               </tr>
               <tr>
                  <td>자격증</td>
                  <td>
                  
                        <input type="radio" name="license" value="license">유&nbsp;&nbsp;&nbsp;
                        <input type="radio" name="license" value="nolicense">무                  
               </tr>
               <tr>
               <td>흡연여부</td>
               <td>
               		<input type="radio" name="smoke" value="smoke"><label>흡연</label>&nbsp;&nbsp;&nbsp;
               		<input type="radio" name="smoke" value="nosmoke"><label>비흡연</label>
               </td>
               </tr>
               <tr>
               <td>국적</td>
               <td>
               		<input type="radio" name="country" value="korea"><label>한국</label>&nbsp;&nbsp;&nbsp;
               		<input type="radio" name="country" value="josun"><label>조선족교포</label>&nbsp;&nbsp;&nbsp;
               		<input type="radio" name="country" value="asia"><label>동아시아</label>&nbsp;&nbsp;&nbsp;
               		<input type="radio" name="country" value="etc"><label>기타</label>
               </td>
               </tr>
                <tr><td rowspan="5">경력사항</td></tr>
            <tr>
               <td>회사명</td>
               <td><input type='text' name='companyname' style="width: 30%;" /></td>
            </tr>
			<tr>
			<td>근무기간</td>
			<td>
			<input type='date' name='startday'/>&nbsp; 부터 &nbsp; <input type='date' name='endday'/> 까지
			</td>
			</tr>
         </table>
				<div class="button_div">
         			<p><a href="apply_services_en.do" class="btn btn-primary">취소</a></p>				
         			<p><a href="#" class="btn btn-primary" id="update">수정하기</a></p>				
<!-- 			       	<input name="write" type="submit" value="작성하기"> -->
<!-- 	               	<input name="cancel"type="reset" value="취소하기"> -->
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


</body>
</html>