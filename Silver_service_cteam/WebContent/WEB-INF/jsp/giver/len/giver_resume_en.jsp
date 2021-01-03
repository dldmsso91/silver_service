<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>        




<script type="text/javascript"
	src="https://www.gstatic.com/charts/loader.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){
			
		    $('#delete').click(function(){
		    	var result = confirm('정말 삭제하시겠습니까?'); 

		    	if(result){ 

			    	location.replace('index');
			    	alert("삭제되었습니다");
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
			
			
			genRowspan("first");
		});

		function genRowspan(className){
			$("." + className).each(function() {
				var rows = $("." + className + ":contains('" + $(this).text() + "')");
				if (rows.length > 1) {
					rows.eq(0).attr("rowspan", rows.length);
					rows.not(":eq(0)").remove();
				}
			});
		}
		
		
		
		

		
		
		
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


<form method="post" name="form" id='form'>	
    <div class="layer" >

          <div class="layer_inner">
			<h1>내 이력서 열람</h1>${giver_no}
			<div class="My_Image">
			<img src="resources/images/1.jpg" alt="My Image">		
			</div>
				<table class="ui celled table">
				<tr><td rowspan="11">기본정보</td></tr>
				<tr>
					<td>이름</td>
					<td colspan='2'>${Default[0].memberVO.u_name}</td>
				</tr>
				<tr>
					<td>나이</td>
						<td colspan='2'>
							<input type='hidden' class='u_birth' name='u_birth' value='${Default[0].memberVO.u_birth}'>
							<input type='hidden' class='u_birth2' name='u_birth' value='${Default[0].memberVO.u_birth2}'>
							<span id="age"></span>
    					</td>
				</tr>
				<tr>
					<td>핸드폰번호</td>
						<td colspan='2'>
							${Default[0].memberVO.u_phone}
    					</td>
				</tr>
				<tr>
					<td>E-mail</td>
						<td colspan='2'>
							${Default[0].memberVO.u_email}
    					</td>
				</tr>
				<tr>
					<td> 성별 </td>
					<td colspan='2'> 
						<span id="gender"></span>
     				</td>
   				</tr>				
      				<tr>
      					<td>주소</td>
      					<td colspan='2'>
      					${Default[0].memberVO.u_addr}
      					${Default[0].memberVO.u_addr1}
      					${Default[0].memberVO.u_addr2}</td>
      				</tr>
			<tr>
				<td>흡연여부</td>
				<td colspan='2'>
					${Default[0].smoking}
				</td>
			</tr>
			<tr>
				<td>학력</td>
				<td colspan='2'>
					${Default[0].school}
				</td>
			</tr>
			<tr>
				<td>전공</td>
				<td colspan='2'>
					${Default[0].major}
				</td>
			</tr>
			<tr>
				<td>희망근무시간</td>
				<td colspan='2'>
					${Default[0].hope_worktime_start}~
					${Default[0].hope_worktime_end}
				</td>
			</tr>			

	<c:forEach items="${Area}" var="g">
		<c:forEach items="${g.hope_business_areaVO}" var="a">
				<tr>  				
					<td class="first">희망근무지역</td>
					<td >희망근무지역 : </td>
					<td colspan='2'>${a.hope_business_city}${a.hope_business_town}</td>
				</tr>
			</c:forEach>
		</c:forEach>	
		
		
	

		<tr>
			<th></th>
			<th>자격증 명</th>
			<th>발급기관</th>
			<th>발급일</th>
		</tr>
		
	<c:forEach items="${License}" var="g">
		<c:forEach items="${g.licenseVO}" var="l">
				<tr>  				
					<td class="first">자격증</td>
<%-- 					<td>${l.license_no}</td>  --%>
					<td>${l.license_name}</td> 
					<td>${l.license_Institute}</td>
					<td>${l.license_Redate}</td>
				</tr>
			</c:forEach>
		</c:forEach>	
		
		
		<tr>
			<th></th>
			<th>회사 명</th>
			<th>근무 기간</th>
			<th>맡은 역할</th>
		</tr>		
	<c:forEach items="${Career}" var="g">   
		<c:forEach items="${g.careerVO}" var="c">
				<tr>  				
					<td class="first">경력사항</td>
					<td>${c.career_name}</td> 
					<td>${c.work_period_start}~${c.work_period_end}</td>
					<td>${c.role}</td>
				</tr>
			</c:forEach>
		</c:forEach>			
			</table>
				<input type="hidden" name="giver_no" value="${giver_no}"/>   			
				<div class="button_div">			
				<button type="submit" class="btn btn-primary" id="update" value="이력서 수정" onclick="javascript: form.action='my_resume_update_en';">이력서 수정</button>
				<button type="submit" class="btn btn-primary" id="delete" value="이력서 삭제" onclick="javascript: form.action='my_resume_delete_en';">이력서 삭제</button>
				</div>
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

