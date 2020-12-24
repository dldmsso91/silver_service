<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>


    <script type="text/javascript">

    $(function(){
	    $('#update').click(function(){
	    	var result = confirm('정말 수정하시겠습니까?'); 

	    	if(result){ 

		    	location.replace('index');
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




    <!-- MAIN -->



   <div id="test" class="slide-item overlay">

    </div>





<form method="post" action="giver_apply">
    <div class="layer" >

          <div class="layer_inner">
         <h1>간병인도우미 지원하기</h1>
         <div class="My_Image">
         <img src="resources/images/1.jpg" alt="My Image">      
         </div>
           <table class="ui celled table" name="inform_table" style="  width: 1200px;margin: auto; border=1">
            
            <input type="hidden" name="giver_type" value="간병인도우미"/>   

            <tr><td rowspan="7">기본정보</td></tr>
              <tr>         
               <td >희망근무지역</td> 
               <td colspan="2">
                <!-- 1차 희망지역 -->
				<select name="hope_business_city" id="hope_business_city" ></select>
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
               <td colspan="2">
               <input type="text" name="hope_business_place" style="width: 60%;" value=""/>       
               </td>
               </tr>            
            <tr>
               <td>
                  희망급여
                </td>
                <td colspan="2">
                  일급 : <input type="text" name="hope_salary" style="width: 60%; value=""/>원
                </td>
           </tr>
               <tr>
               <td>흡연여부</td>
               <td colspan="2">
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
         <td colspan="2">
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
               <td><input type='text' name='license_institute' style="width: 50%;" /></td>
            </tr>             
			<tr>
				<td>취득연도</td>
				<td>
				<input type='date' name='license_redate'/>
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
			<input type='date' name='work_start_period'/>부터
			<input type='date' name='work_end_period'/>까지		
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
                  <p><a href="succesed_apply_giver_en" class="btn btn-primary">작성</a></p>
                  <p><a href="apply_services_en" class="btn btn-primary">취소</a></p>                   

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