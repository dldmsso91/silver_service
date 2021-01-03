<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>    
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
<script
	src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
<script type="text/javascript"
	src="https://www.gstatic.com/charts/loader.js"></script>
<script>
	$(document).ready(function() {
		
		var birth2 = $('.u_birth2').val()
		


        var birth3 = birth2.slice(0,1);
        var gender = $('#gender');
        if(birth3 == '1' || birth3 == '3')
        	gender.text('남자');
        else if(birth3 == '2' || birth3 == '4')
        	gender.text('여자');
					
            
        
        

			var birth1 = $('.u_birth').val();
			var age=0;
         

              var yy=birth1.substr(0,2);    //생년
              var mm=birth1.substr(2,2);    //생월
              var dd=birth1.substr(4,2);    //생일

            
		      //생년 계산(80세 이전까지 적용하므로 첫자가 0~2이 아니면 1900년대/ 아니면 2000년대)
				today=new Date();
              
				var i=birth1.substr(0,1);
				
				cc=(i>2) ? '19':'20';
				
				var birthyear=cc+yy;
				var m=today.getMonth()+1-6; 
				
				m=(m<0)?m+12:m; 
				
				var d=today.getDate();
				var age=today.getFullYear()-birthyear;
				
				
		  		var age_val = $('#age');
					if (mm>m) {age++;
					age_val.text(age);	
					
					}
					else if (mm==m){
						if (dd<=d){
						age_val.text(age);	
							
							
						}
						else if(dd>d){	age++;
						age_val.text(age);	
						
						}
					}		
		$('.bxslider').bxSlider({
			auto : true,
			autoControls : true,
			stopAutoOnClick : true,
			pager : true,
			minSlides : 4,
			maxSlides : 2,
			slideWidth : 700,
			slideMargin : 20,
			touchEnabled : (navigator.maxTouchPoints > 0)
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

h5 {
	margin-top: 30px;
}

h3 {
	margin-top: 30px;
}

.bxslider_area {
	margin: 0 auto;
	margin-bottom: 150px;
	width: 1700px;
}

.bx-wrapper {
	margin: 0px auto;
	text-align: center;
}

.bx-wrapper li {
	border: 1px solid #cacaca;
	padding: 10px;
	border-radius: 20px;
	box-shadow: 5px 5px 5px #e8e8e8;
}

.bx-wrapper li a {
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


.stars-container {
  position: relative;
  display: inline-block;
  color: transparent;
}

.stars-container:before {
  position: absolute;
  top: 0;
  left: 0;
  content: '★★★★★';
  color: lightgray;
}

.stars-container:after {
  position: absolute;
  top: 0;
  left: 0;
  content: '★★★★★';
  color: gold;
  overflow: hidden;
}

.stars-0:after { width: 0%; }
.stars-1:after { width: 20%; }
.stars-2:after { width: 40%; }
.stars-3:after { width: 60%; }
.stars-4:after { width: 80%; }
.stars-5:after { width: 100; }

.bx-wrapper {
	-webkit-box-shadow: 0 0 5px #ccc0;
	box-shadow: 0 0 5px #ccc0;
	border: 5px solid #fff;
	background: #fff;
}

.bx-wrapper img {
	max-width: 75%;
	display: block;
	margin: 0 auto;
}
</style>

<!-- MAIN -->



<div id="test" class="slide-item overlay"></div>

<h2>${member.u_name}${member.u_addr1}${Customer_no}님을 위한 도우미들입니다</h2>

<form action="giver_resume_detail_en" method="post">
	<div class='bxslider_area'>
		<ul class="bxslider">

<c:forEach items="${Default}" var="r">
			<li><img src="resources/images/1.jpg" alt="Image"
				class="img-fluid" />
				<h3>${r.memberVO.u_name}</h3>
				<hr>
				<h5>기본 정보</h5>
				
				<c:forEach items="${r.hope_business_areaVO}" var="h">						
				희망근무지역 :  ${h.hope_business_city}/${h.hope_business_town}<br/>
				</c:forEach>
	
				
				나이 :<span id="age"></span><br/>				
				성별 : <span id="gender"></span><br/>
				희망연봉 : ${r.hope_salary}<br/>
				
				<h5>도우미에 대한 평가</h5>
<%-- 				<c:forEach items="${r.giver_satisfactionVO}" var="s">						 --%>
<%-- 					<input type="hidden" id="satisfaction_score" value="${s.customer_satisfaction_score}">				 --%>
<%-- 					<div><span class="stars-container stars-${s.customer_satisfaction_score}">★★★★★</span></div>	 --%>
<%-- 				</c:forEach> --%>
<!-- 					<br/> -->
				
									
				<input type='hidden' class='u_birth' name='u_birth' value='${r.memberVO.u_birth}'>
				<input type='hidden' class='u_birth2' name='u_birth' value='${r.memberVO.u_birth2}'>
                <a href="giver_resume_detail_en?giver_no=${r.giver_no}&customer_no=${Customer_no}" class="btn btn-primary"/>선택하기</a>
</c:forEach>
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

