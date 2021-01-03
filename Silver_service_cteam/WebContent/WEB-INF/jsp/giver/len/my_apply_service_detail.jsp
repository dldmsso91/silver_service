<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>        
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
	$(document).ready(function() {
		
		
	    $('#delete').click(function(){
	    	var result = confirm('정말 취소하시겠습니까?'); 

	    	if(result){ 

		    	location.replace('index');
		    	alert("취소되었습니다");
		    	} 

		    else{  }

		    });				
		
		
		
		
		
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
<script>
$(document).ready(function() {
	

	$('#Hope_start_servicetime').val('10:00').prop("selected",true);
	console.log("Hope_start_servicetime");
</script>
<style>
.table {
	width: 55%;
	margin-bottom: 1rem;
	text-align: center;
	margin: 0 auto;
	margin-top: 50px;
}

.sub_table {
	text-align: center;
	margin: 0 auto;
}

.layer {
	text-align: center;
	margin-top: 25px;
}

.button_div {
	display: inline-flex;
	width: 15%;
	margin: 0 auto;
	margin-top: 20px;
}

.button_div input {
	margin-left: 1%;
	margin-right: 1%;
}

.btn {
	padding: 10px 25px;
}

.button_div p {
	margin: 0 auto;
}

.My_Image {
	width: 150px;
	overflow: hidden;
	height: 160px;
	border-radius: 30px;
	margin: 0 auto;
	margin-top: 40px;
}

.My_Image img {
	width: 100%;
}
</style>

<!-- MAIN -->


<div id="test" class="slide-item overlay"></div>

	<h3 style="text-align:center; margin:auto;">내 정보</h3>
	<form method="post" name="form" id='form' action="updatepage">	
				<table class="ui celled table"    style="width: 50% ;text-align: center;margin: auto;">
      				<tr><td rowspan="11">신청정보</td></tr>
      				<tr>
      				<td>도우미타입</td>
      				<td colspan='2'> 
      				${giver_type}
<!--       				<input type="radio" name="giver_type" value="간병도우미">간병도우미&nbsp;&nbsp;&nbsp; -->
<!--                		<input type="radio" name="giver_type" value="외출도우미">외출도우미&nbsp;&nbsp;&nbsp; -->
<!--                		<input type="radio" name="giver_type" value="생활도우미">생활도우미 -->
      				</td>
      				</tr>
      				<tr>
      				<td>현재상태</td>
      				<td colspan='2'> 
      				${my_condition}
<!--       				<input type="checkbox" name="status" value="수술"><label>수술</label>&nbsp;&nbsp;&nbsp; -->
<!-- 						<input type="checkbox" name="status" value="재활"><label>재활</label>&nbsp;&nbsp;&nbsp; -->
<!-- 						<input type="checkbox" name="status" value="암"><label>암</label>&nbsp;&nbsp;&nbsp; -->
<!-- 						<input type="checkbox" name="status" value="치매"><label>치매</label>&nbsp;&nbsp;&nbsp; -->
<!-- 						<input type="checkbox" name="status" value="정신질환"><label>정신질환</label>&nbsp;&nbsp;&nbsp; -->
<!-- 						<input type="checkbox" name="status" value="실명"><label>실명</label>&nbsp;&nbsp;&nbsp; -->
<!-- 						<input type="checkbox" name="status" value="격리"><label>격리</label>&nbsp;&nbsp;&nbsp; -->
<!-- 						<input type="checkbox" name="status" value="전염성"><label>전염성</label>&nbsp;&nbsp;&nbsp; -->
<!-- 						<input type="checkbox" name="status" value="욕창"><label>욕창</label>&nbsp;&nbsp;&nbsp; -->
<!-- 						<input type="checkbox" name="status" value="의식불명"><label>의식불명</label> -->
      				</td>
      				</tr>
      				<tr>
      				<td>알러지유무</td>
      				<td colspan='2'> 
      				${my_allergy}
<!--       					<input type="checkbox" name="my_allergy" value="땅콩">땅콩&nbsp;&nbsp;&nbsp; -->
<!--              	<input type="checkbox" name="my_allergy" value="밀가루">밀가루&nbsp;&nbsp;&nbsp; -->
<!--              	<input type="checkbox" name="my_allergy" value="해산물">해산물&nbsp;&nbsp;&nbsp; -->
<!--              	<input type="checkbox" name="my_allergy" value="달걀">달걀&nbsp;&nbsp;&nbsp; -->
<!--              	<input type="checkbox" name="my_allergy" value="강아지">강아지&nbsp;&nbsp;&nbsp; -->
<!--              	<input type="checkbox" name="my_allergy" value="고양이">고양이&nbsp;&nbsp;&nbsp; -->
<!--              	<input type="checkbox" name="my_allergy" value="기타">기타&nbsp;&nbsp;&nbsp; -->
<!--              	<input type="checkbox" name="my_allergy" value="없음">없음 -->
      				</td>
      				</tr>
      				<tr>
      				<td>거동여부</td>
      				<td colspan='2'> 
      				${can_walk}
<!--       				<input type='radio' name='can_walk' value='walk' /><label>거동가능</label>&nbsp;&nbsp;&nbsp; -->
<!-- 					<input type='radio' name='can_walk' value='nowalk' /><label>거동불가능</label> -->
      				</td>
      				</tr>
      				<tr>
      				<td>희망시작날짜</td>
      				<td colspan='2'> 
      				${Hope_start_date} 부터
      				${Hope_finish_date}까지
      				</td>
      				</tr>
      				<tr>
      				<td>희망장소</td>
      				<td colspan='2'> 
      				${Hope_service_place}
      				</td>
      				</tr>
      				<tr>
      				<td>희망월급</td>
      				<td colspan='2'> 
      				${Hope_salary}
      				</td>
      				</tr>
      				<tr>
      				<td>희망시간</td>
      				<td colspan='2'> 
      				${Hope_start_servicetime} 부터
      				${Hope_end_servicetime} 까지
<!--       			                  <select name="hope_start_servicetime" id="hope_start_servicetime" class="select_css03" > -->
<!--                      <option value="">시작시간</option>                                                                                                                                                                                                                           -->
<!--                      <option value="08:00" style="background:#CCFFFF;">08:00</option>                                                                                                                                  -->
<!--                      <option value="09:00" style="background:#CCFFFF;">09:00</option>                                                                                                                                  -->
<!--                      <option value="10:00" style="background:#CCFFFF;">10:00</option>                                                                                                                                  -->
<!--                      <option value="11:00" style="background:#CCFFFF;">11:00</option>                                                                                                                                  -->
<!--                      <option value="12:00" style="background:#CCFFFF;">12:00</option>                                                                                                                                  -->
<!--                      <option value="13:00" style="background:#FFCC99;">13:00</option>                                                                                                                                  -->
<!--                      <option value="14:00" style="background:#FFCC99;">14:00</option>                                                                                                                                  -->
<!--                      <option value="15:00" style="background:#FFCC99;">15:00</option>                                                                                                                           -->
<!--                      <option value="16:00" style="background:#FFCC99;">16:00</option>                                                                                                                                  -->
<!--                      <option value="17:00" style="background:#FFCC99;">17:00</option>                                                                                                                                  -->
<!--   					 <option value="18:00" style="background:#FFCC99;">18:00</option>  -->
<!--                   </select>부터&nbsp;&nbsp; -->

<!--                   <select name="hope_end_servicetime" id="hope_end_servicetime" class="select_css03"> -->
<!--                      <option value="">종료시간</option>                                                                                                                                  -->
<!--                      <option value="09:00" style="background:#CCFFFF;">09:00</option>                                                                                                                                  -->
<!--                      <option value="10:00" style="background:#CCFFFF;">10:00</option>                                                                                                                                  -->
<!--                      <option value="11:00" style="background:#CCFFFF;">11:00</option>                                                                                                                                  -->
<!--                      <option value="12:00" style="background:#CCFFFF;">12:00</option>                                                                                                                                  -->
<!--                      <option value="13:00" style="background:#FFCC99;">13:00</option>                                                                                                                                  -->
<!--                      <option value="14:00" style="background:#FFCC99;">14:00</option>                                                                                                                                  -->
<!--                      <option value="15:00" style="background:#FFCC99;">15:00</option>                                                                                                                           -->
<!--                      <option value="16:00" style="background:#FFCC99;">16:00</option>                                                                                                                                  -->
<!--                      <option value="17:00" style="background:#FFCC99;">17:00</option>                                                                                                                                  -->
<!--   					 <option value="18:00" style="background:#FFCC99;">18:00</option> -->
<!--                      <option value="19:00" style="background:#FFCC99;">19:00</option>  					  -->
<!--                   </select> 까지 -->
      				</td>
      				</tr>
      				<tr>

      				</tr>
				</table>
<input type="hidden" name="customer_no" value="${Customer_no}"/>
<div class="button_div">	
<button type="submit" class="btn btn-primary" id="update" value="수정하기" >수정하기</button>		
<button type="submit" class="btn btn-primary" id="delete" value="취소하기" onclick="javascript: form.action='delete_customer';">취소하기</button>
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

