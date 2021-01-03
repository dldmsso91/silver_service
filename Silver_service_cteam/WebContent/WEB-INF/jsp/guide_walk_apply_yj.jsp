<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		 $("select[name^=hope_business_city]").each(function() {
		  $selsido = $(this);
		  $.each(eval(area0), function() {
		   $selsido.append("<option value='"+this+"'>"+this+"</option>");
		  });
		  $selsido.next().append("<option value=''>구/군 선택</option>");
		 });
		 
		 // 시/도 선택시 구/군 설정
		 $("select[name^=hope_business_city]").change(function() {
		  var area = "area"+$("option",$(this)).index($("option:selected",$(this))); // 선택지역의 구군 Array
		  var $hope_business_town = $(this).next(); // 선택영역 군구 객체
		  $("option",$hope_business_town).remove(); // 구군 초기화
		  if(area == "area0")
		   $hope_business_town.append("<option value=''>구/군 선택</option>");
		  else {
		   $.each(eval(area), function() {
		    $hope_business_town.append("<option value='"+this+"'>"+this+"</option>");
		   });
		  }
		 });

	     $('#btnAdd_career').click (function () {                                        
	         $('.career_jquery').append (                        
	             '<table class="ui celled table" name="career_table" style="  width: 1200px;margin: auto; border=1">\
							<tr><td rowspan="4">경력사항</td></tr>\
							<tr>\
							   <td>회사명</td>\
							   <td><input type="text" name="career_name" style="width: 50%;" /></td>\
							</tr>\
							<tr>\
							   <td>역할</td>\
							   <td><input type="text" name="role" style="width: 50%;" /></td>\
							</tr>\
							<tr>\
								<td>근무기간</td>\
								<td>\
								<input type="date" name="work_period_start"/>부터\
								<input type="date" name="work_period_end"/>까지\
									</td>\
							</tr>\
					</table>\
					<input type="button" id="btnRemove_career" class="btnRemove_career" value="제거하기"><br>'                    
	         ); // end append                            
	         $('.btnRemove_career').on('click', function () { 
	             $(this).prev().remove (); // remove the textbox
	             $(this).next ().remove (); // remove the <br>
	             $(this).remove (); // remove the button
	         });
	     }); // end click 


	     $('#btnAdd_license').click (function () {                                        
	         $('.license_jquery').append (
					'<table class="ui celled table" name="license_table" style="  width: 1200px;margin: auto; border=1">\
					<tr><td rowspan="4">자격증</td></tr>\
					<tr>\
						<td>자격증명</td>\
						<td><input type="text" name="license_name" style="width: 50%;" /></td>\
					</tr>\
					<tr>\
					   <td>발행기관</td>\
					   <td><input type="text" name="license_institute" style="width: 50%;" /></td>\
					</tr>\
					<tr>\
						<td>취득연도</td>\
						<td>\
						<input type="date" name="license_redate"/>\
						</td>\
					</tr>\
					</table>\
					<input type="button" id="btnRemove_license" class="btnRemove_license" value="제거하기"><br>'
	         ); // end append                            
	         $('.btnRemove_license').on('click', function () { 
	             $(this).prev().remove (); // remove the textbox
	             $(this).next ().remove (); // remove the <br>
	             $(this).remove (); // remove the button
	         });
	     }); // end click
	     
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
    
.btnRemove_license {
    background: #5fb56e;
    border-color: #ffffff;
    color: #fff;
    font-size: 15px;
}

.btnRemove_career {
    background: #5fb56e;
    border-color: #ffffff;
    color: #fff;
    font-size: 15px;
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
                        <li><a href="guide_nursing_apply_yj">간병도우미 지원하기</a></li>
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





<form method="post" action="giver_apply">
    <div class="layer" >

          <div class="layer_inner">
         <h1>외출도우미 지원하기</h1>
         <div class="My_Image">
         <img src="resources/images/1.jpg" alt="My Image">      
         </div>
           <table class="ui celled table" name="inform_table" style="  width: 1200px;margin: auto; border=1">
  			<input type="hidden" name="u_no" value="${member.u_no}"/>             
            <input type="hidden" name="giver_type" value="외출도우미"/>   

            <tr><td rowspan="7">기본정보</td></tr>
              <tr>         
               <td>희망근무지역</td> 
               <td>
                <!-- 1차 희망지역 -->
				<select name="hope_business_city" id="hope_business_city"></select>
				<select name="hope_business_town" id="hope_business_town"></select>
				<br>
				<br>
<!--			2차 희망지역
				<select name="hope_business_city2" id="hope_business_city2"></select>
				<select name="hope_business_town2" id="hope_business_town2"></select> -->             
            </td>
            </tr>
              <tr>         
               <td>희망근무장소</td> 
               <td>
               <input type="text" name="hope_business_place" style="width: 60%;" value=""/>       
               </td>
               </tr>            
            <tr>
               <td>
                  희망급여
                </td>
                <td>
                  일급 : <input type="text" name="hope_salary" style="width: 60%; value=""/>원
                </td>
           </tr>
               <tr>
               <td>흡연여부</td>
               <td>
               		<input type="radio" name="smoking" value="흡연"><label>흡연</label>&nbsp;&nbsp;&nbsp;
               		<input type="radio" name="smoking" value="비흡연"><label>비흡연</label>
               </td>
               </tr>
               
				<tr>
				<td>학력</td>
				<td>
				<select name='school' style="width: 60%;" >
					<option> -학력- </option>
				    <option value="초졸">초졸</option>
	    			<option value="중졸">중졸</option>
	    			<option value="고졸">고졸</option>
	    			<option value="대졸">대졸</option>
				</select>
				</td>
				<td>
				전공 과목 : <input type="text" name='major' style="width: 60%;" >
				</td>				
				</tr>                 

      <tr>
         <td>근무시간</td>
         <td>
                  <select name="hope_worktime_start" id="hope_worktime_start" class="select_css03">
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

                  <select name="hope_worktime_end" id="hope_worktime_end" class="select_css03">
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
			
			
			<table class="ui celled table" name="license_table" style="  width: 1200px;margin: auto; border=1">
			<div class="license_jquery">
            <tr><td rowspan="5">자격증</td></tr>
            <tr>
	            <td>자격증명</td>
	            <td><input type='text' name='license_name' style="width: 50%;" /></td>
            </tr>
            <tr>
               <td>발행기관</td>
               <td><input type='text' name='license_Institute' style="width: 50%;" /></td>
            </tr>             
			<tr>
				<td>취득연도</td>
				<td>
				<input type='date' name='license_Redate'/>
				</td>
			</tr>
			<tr>
			<td>
			</td>
			<td>
			<input type="button" id="btnAdd_license" value="추가하기" class="btn btn-primary" ><br>
			</td>
			</tr>			
			</div>
			</table>
			
			<table class="ui celled table" name="career_table" style="  width: 1200px;margin: auto; border=1">
			<div class="career_jquery">
            <tr><td rowspan="5">경력사항</td></tr>
            <tr>
               <td>회사명</td>
               <td><input type='text' name='career_name' style="width: 50%;" /></td>
            </tr>
            <tr>
               <td>역할</td>
               <td><input type='text' name='role' style="width: 50%;" /></td>
            </tr>          
			<tr>
			<td>근무기간</td>
			<td>
			<input type='date' name='work_period_start'/>부터
			<input type='date' name='work_period_end'/>까지			
			</td>
			</tr>
			<tr>
			<td>
			</td>
			<td>
			<input type="button" class="btn btn-primary" id="btnAdd_career" value="추가하기"><br>
			</td>
			</tr>
			</div>
         </table>
            <div class="button_div">
                  <p><input type="submit" value="가입" class="btn btn-primary"></p>   
                  <p><a href="apply_services_en" class="btn btn-primary">취소</a></p>                   
<!--                    <input name="write" type="submit" value="작성하기"> -->
<!--                      <input name="cancel"type="reset" value="취소하기"> -->
            </div>
       </div>
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
<Script></Script>

</body>
</html>