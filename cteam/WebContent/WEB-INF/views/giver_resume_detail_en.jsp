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




    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['Year', 'Sales'],
          ['외향성',  1000],
          ['호감성',  1170],
          ['성실성',  660],
          ['정서적 불안정성',  1030],
          ['경험에 대한 개방성',  1030],
        ]);

        var options = {
          title: '직업 흥미 유형별 점수_워크넷',
          curveType: 'function',
          legend: 'none'
        };

        var chart = new google.visualization.LineChart(document.getElementById('curve_chart'));

        chart.draw(data, options);
      }
    </script>


<script src="https://code.jquery.com/jquery-3.4.1.js"   
	integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="   
	crossorigin="anonymous">
</script>

    <script type="text/javascript">

    $(function(){
// 	    ----------------------------------------삭제시, confirm이 나오게 하는 코드        
	    $('#delete').click(function(){
	    	var result = confirm('정말 삭제하시겠습니까?'); 

	    	if(result){ 

		    	yes 
		    	location.replace('index.php');} 

		    else{ no }

		    });


// 	    ----------------------------------------click시 밑에 contents가 나오게 하는 코드div


		var inner_item = $(".inner_item")
		var inner_item1 = $(".inner_item1")
		var inner_item2 = $(".inner_item2")
		var inner_item3 = $(".inner_item3")
		var inner_item4 = $(".inner_item4")

		
		inner_item.children().hide()

		$(".item1").click(function () { 		
			inner_item1.toggle(function(){
				inner_item1.addClass('show');
				  }, function(){
				inner_item1.addClass('hide');
				  });		  
		});






		
		$(".item2").click(function () { 		
			inner_item2.toggle(function(){
				inner_item2.addClass('show');
				  }, function(){
					  inner_item2.addClass('hide');
				  });
		});
		$(".item3").click(function () { 		
			inner_item3.toggle(function(){
				inner_item3.addClass('show');
				  }, function(){
			inner_item3.addClass('hide');
				  });
		});
		$(".item4").click(function () { 		
			inner_item4.toggle(function(){
				inner_item4.addClass('show');
				  }, function(){
			inner_item4.addClass('hide');
				  });
		});

		




		
     });

    </script>



<style>
.table{    

	width: 100%;
    margin-bottom: 1rem;
    text-align: center;
    margin: 0 auto;
    margin-top: 50px;
    font-size:16px;
    }
.sub_table{
    text-align: center;
    margin: 0 auto;
}
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


.resume_table{
	width: 45%;
    margin: 0 auto;
    margin-top: 50px;
    display: flex;
}
#resume{
    margin: 0 auto;
    width: 100%;
    font-size: 4vh;
    text-align: left;
}

.item1,.item2,.item3,.item4{
    font-size: 2vh;
    text-align: center;
    border-radius: 50px;
    width: 54%;
    padding: 1%;
    margin: 0 auto;
    display: inline;    
}
.inner_item {
    position: relative;
    top: 10px;
    margin-bottom: 2rem;
}

.resume_table img{

    width: 20%;

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
    





    <div class="layer" >

          <div class="layer_inner">
			<h1>도우미 이력서 열람</h1>
			<div class="My_Image">
			<img src="resources/images/1.jpg" alt="My Image">		
			</div>		
			
			
			
			
			
					
			<div class="resume_table">
				
				<div class="item1" style="background: #f9f3ec;">
				<img src="resources/images/info.png" alt="My Image" >
				<br>기본 정보
				</div>
				
				
				<div class="item2" style="background: #9bdac5;" >
				<img src="resources/images/plus_info.png" alt="My Image" >
				<br>추가정보
				</div>
					
					
				<div class="item3" style="background: #fbcbcb;">
				<img src="resources/images/heart_info.png" alt="My Image" >
				<br>성격 진단검사
				</div>



				<div class="item4" style="background: antiquewhite;">
				<img src="resources/images/job_info.png" alt="My Image" >
				<br>경력사항
				</div>					
			</div>				
			
			
			
			
			
			
			<div class="inner_item">
					<div class="inner_item1" id="inner_item1" style="background: white;">
					<table class="ui celled table">
						<tr><td rowspan="5">기본정보</td></tr>
							<tr>
								<td>이름</td>
								<td>이문자</td>
							</tr>
							<tr>
								<td>나이</td>
									<td>
										43세
			    					</td>
							</tr>
							<tr>
								<td> 성별 </td>
								<td> 
									여자
			     				</td>
			   				</tr>				
			      				<tr>
			      					<td>주소</td>
			      					<td>서울특별시 강서구 하늘길 77(방화동 886)</td>
			      				</tr>
	      				</table>
						</div>
<!-- 						-----------------------------------------------------------inner_item1 -->

	

						<div class="inner_item2" id="inner_item2" style="background: white;">
	    				<table class="ui celled table">
						<tr>
							<td rowspan="7">추가정보</td>
							</tr>  
							<tr>    				
							<td class="td01">출퇴근형<br>희망근무지역</td> 
							<td>     				
								<span class="tit01">1지망 :
										서울 / 마포구 전체 
		
									<input type="text" name="area2_search_text" id="area2_search_text" class="inbor1" value="" style="width: 70px; display: none">
								</span> 
							<br>
								<span class="tit01">2지망 :
										서울 / 마포구 전체 
								</span> 
							<br>
								<span class="tit01">3지망 :
										서울 / 마포구 전체 
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
							10년
						</td>
					</tr>
				<tr>
					<td>근무시간</td>
					<td>
						오전 9:00 ~ 오후 11:00 까지 가능
					</td>
						</tr>
							<tr>
								<td>
								희망급여
								</td>
								<td>
									시간제
								</td>
							</tr>
							<tr>
								<td>자격증</td>
								<td>				
									유
								</td>
							</tr>
							<tr>
								<td>간단 자기소개</td>
								<td>				
									안녕하세요 오랜 경력으로 최선을 다하겠습니다! 믿고 맡겨주세요!
								</td>
							</tr>
						</table>
					</div>	
<!-- 					-----------------------------------------------------------inner_item2		 -->
					<div class="inner_item3" id="inner_item3" style="background: white;">			
	    				<table class="ui celled table">
						<tr>
							<td rowspan="2">성격 진단검사</td>
						</tr>
							<tr>
								<td>	
								    <table class="sub_table" style="border: 1px solid #dee2e6;">
								    	<tr><th>외향성</th><th>호감성</th><th>성실성</th><th>정서적 불안정성</th><th>경험에 대한 개방성</th></tr>
								    	<tr><td>55</td><td>66</td><td>77</td><td>88</td><td>99</td></tr>
								    </table>			
							</td>
							<td></td>
						</tr>
						</table>
					</div>	
<!-- 					-----------------------------------------------------------inner_item3		 -->
					<div class="inner_item4" id="inner_item4" style="background: white;">			
					<table class="ui celled table">						
					<tr>
						<td rowspan="7">경력사항</td>
						</tr>    
						<tr>  				
							<td class="td01">좋은간병</td> 
							<td>     				
								2010~2020년
							</td>
						</tr>
						<tr>  				
							<td class="td01">좋은간병</td> 
							<td>     				
								2010~2020년
							</td>
						</tr>
						<tr>  				
							<td class="td01">좋은간병</td> 
							<td>     				
								2010~2020년
							</td>
						</tr>
				</table>
			</div>
<!-- 			-----------------------------------------------------------inner_item4		 -->
			</div>	
		
				<div class="button_div">
         			<p><a href="succesed_apply_service_en.do" class="btn btn-primary" style="margin-top: 30px;">선택하기</a></p>						
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