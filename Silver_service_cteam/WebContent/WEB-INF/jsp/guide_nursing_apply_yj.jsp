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
//숫자 확인
String.prototype.only_number = function(){
 return this.replace(/[^0-9]/gi, '');
}
// 나이 계산
function fnAge()
{
 var today = new Date();
 var y = document.getElementById('y').value;
 if(y == '' || y.length < 4)
 {
  alert('년도(예>1990)를 입력하세요.');
  document.getElementById('age').innerText = '?';
  document.getElementById('y').focus();
  return false;
 }
 if(Number(y) < (today.getFullYear() - 150))
 {
  alert('나이가 너무 많습니다.');
  document.getElementById('age').innerText = '?';
  document.getElementById('y').focus();
  return false;
 }
 if(Number(y) >= today.getFullYear())
 {
  alert('1살 이하입니다.');
  document.getElementById('age').innerText = '?';
  document.getElementById('y').focus();
  return false;
 }
 var m = document.getElementById('m').value;
 if(m == '' || m.length < 1 || (Number(m) < 1 || Number(m) > 12))
 {
  alert('월(예>1~12)을 입력하세요.');
  document.getElementById('age').innerText = '?';
  document.getElementById('m').focus();
  return false;
 }
 var d = document.getElementById('d').value;
 if(d == '' || d.length < 1 || (Number(d) < 1 || Number(d) > 31))
 {
  alert('일(예>1~31)을 입력하세요.');
  document.getElementById('d').focus();
  return false;
 }
 var birthday = new Date(m + '/' + d + '/' + y);
 var years = today.getFullYear() - birthday.getFullYear();
 // 현재 년도에서 생일을 재설정
 birthday.setFullYear(today.getFullYear());
 // 생일이 지났으면 -1
 if(today < birthday)
 {
  years--;
 }
 document.getElementById('age').innerHTML = years;
}
$('document').ready(function() {
	 var area0 = ["시/도 선택","서울특별시","인천광역시","대전광역시","광주광역시","대구광역시","울산광역시","부산광역시","경기도","강원도","충청북도","충청남도","전라북도","전라남도","경상북도","경상남도","제주도"];
	  var area1 = ["강남구","강동구","강북구","강서구","관악구","광진구","구로구","금천구","노원구","도봉구","동대문구","동작구","마포구","서대문구","서초구","성동구","성북구","송파구","양천구","영등포구","용산구","은평구","종로구","중구","중랑구"];
	   var area2 = ["계양구","남구","남동구","동구","부평구","서구","연수구","중구","강화군","옹진군"];
	   var area3 = ["대덕구","동구","서구","유성구","중구"];
	   var area4 = ["광산구","남구","동구",     "북구","서구"];
	   var area5 = ["남구","달서구","동구","북구","서구","수성구","중구","달성군"];
	   var area6 = ["남구","동구","북구","중구","울주군"];
	   var area7 = ["강서구","금정구","남구","동구","동래구","부산진구","북구","사상구","사하구","서구","수영구","연제구","영도구","중구","해운대구","기장군"];
	   var area8 = ["고양시","과천시","광명시","광주시","구리시","군포시","김포시","남양주시","동두천시","부천시","성남시","수원시","시흥시","안산시","안성시","안양시","양주시","오산시","용인시","의왕시","의정부시","이천시","파주시","평택시","포천시","하남시","화성시","가평군","양평군","여주군","연천군"];
	   var area9 = ["강릉시","동해시","삼척시","속초시","원주시","춘천시","태백시","고성군","양구군","양양군","영월군","인제군","정선군","철원군","평창군","홍천군","화천군","횡성군"];
	   var area10 = ["제천시","청주시","충주시","괴산군","단양군","보은군","영동군","옥천군","음성군","증평군","진천군","청원군"];
	   var area11 = ["계룡시","공주시","논산시","보령시","서산시","아산시","천안시","금산군","당진군","부여군","서천군","연기군","예산군","청양군","태안군","홍성군"];
	   var area12 = ["군산시","김제시","남원시","익산시","전주시","정읍시","고창군","무주군","부안군","순창군","완주군","임실군","장수군","진안군"];
	   var area13 = ["광양시","나주시","목포시","순천시","여수시","강진군","고흥군","곡성군","구례군","담양군","무안군","보성군","신안군","영광군","영암군","완도군","장성군","장흥군","진도군","함평군","해남군","화순군"];
	   var area14 = ["경산시","경주시","구미시","김천시","문경시","상주시","안동시","영주시","영천시","포항시","고령군","군위군","봉화군","성주군","영덕군","영양군","예천군","울릉군","울진군","의성군","청도군","청송군","칠곡군"];
	   var area15 = ["거제시","김해시","마산시","밀양시","사천시","양산시","진주시","진해시","창원시","통영시","거창군","고성군","남해군","산청군","의령군","창녕군","하동군","함안군","함양군","합천군"];
	   var area16 = ["서귀포시","제주시","남제주군","북제주군"];
	 
	 // 시/도 선택 박스 초기화
	 $("select[name^=sido]").each(function() {
	  $selsido = $(this);
	  $.each(eval(area0), function() {
	   $selsido.append("<option value='"+this+"'>"+this+"</option>");
	  });
	  $selsido.next().append("<option value=''>구/군 선택</option>");
	 });
	 
	 // 시/도 선택시 구/군 설정
	 $("select[name^=sido]").change(function() {
	  var area = "area"+$("option",$(this)).index($("option:selected",$(this))); // 선택지역의 구군 Array
	  var $gugun = $(this).next(); // 선택영역 군구 객체
	  $("option",$gugun).remove(); // 구군 초기화
	  if(area == "area0")
	   $gugun.append("<option value=''>구/군 선택</option>");
	  else {
	   $.each(eval(area), function() {
	    $gugun.append("<option value='"+this+"'>"+this+"</option>");
	   });
	  }
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
	width: 155px;
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


          <div class="col-6 d-inline-block d-xl-none ml-md-0 py-3" style="position: relative; top: 3px;"><a href="#" class="site-menu-toggle js-menu-toggle float-right"><span class="icon-menu h3 text-white"></span></a></div>

        </div>
      </div>

    </header>



    <!-- MAIN -->


    <div id="test" class="slide-item overlay">

    </div>





<form action="POST" class='wirtehugi'>
    <div class="layer" >

          <div class="layer_inner">
         <h1>간병인 지원하기</h1>
         <div class="My_Image">
         <img src="resources/images/1.jpg" alt="My Image">      
         </div>
            <table class="ui celled table" style="width: 1000px;margin: auto;">
            <tr>
            <td rowspan="1">신청자 정보</td>
            <td></td>
            <td><input type="radio" name="my" value=""><label>본인</label>
            <input type="radio" name="my" value=""><label>그 외
            <select>
            <option>배우자</option>
            <option>자녀</option>
            <option>친척</option>
            <option>이웃주민</option>
            </select></label></td>
     		</tr>
            <tr><td rowspan="7">기본정보</td></tr>
            <tr>
               <td>이름</td>
               <td><input type='text' name='name' style="width: 30%;" /></td>
            </tr>
            <tr>
               <td>생년월일</td>
                  <td>
                     <input type="text" id="y" maxlength="4" class="nb" value="" onblur="this.value=this.value.only_number();" style="width: 100px;"/>년
 					<input type="text" id="m" maxlength="2" class="nb" value="" onblur="this.value=this.value.only_number();" style="width: 100px;"/>월
 					<input type="text" id="d" maxlength="2" class="nb" value="" onblur="this.value=this.value.only_number();" style="width: 100px;"/>일
 					<input type="button" id="btn_age" onclick="fnAge()" value="확인" class="btn btn-primary"/>
                   </td>
            </tr>
            <tr>               
             <td>나이</td>
                <td><span id="age">세<td>
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
                  <td>전화번호</td>
                  <td><input type="text" name="phonenumber"></td>
                  </tr>
            <tr>
               <td rowspan="6">추가정보</td>
               </tr>         
            <tr>         
               <td>출퇴근형<br>희망근무지역</td> 
               <td>
               1차 희망지역
				<select name="sido1" id="sido1"></select>
				<select name="gugun1" id="gugun1"></select>
				<br>
				2차 희망지역
				<select name="sido2" id="sido2"></select>
				<select name="gugun2" id="gugun2"></select>             
            </td>
            </tr>
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
             <p><a href="" class="btn btn-primary">직업적성검사</a></p><br/> 
                  <p><a href="succesed_apply_giver_en" class="btn btn-primary">작성</a></p>   
                  <p><a href="apply_services_en" class="btn btn-primary">취소</a></p>                      
<!--                    <input name="write" type="submit" value="작성하기"> -->
<!--                      <input name="cancel"type="reset" value="취소하기"> -->
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
    <script src="resources/js/star.js"></script>
<Script></Script>

</body>
</html>