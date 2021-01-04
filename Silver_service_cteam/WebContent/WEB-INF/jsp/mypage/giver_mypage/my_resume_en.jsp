<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>        


<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">

<script src="resources/js/my_resume.js"></script>
<style>
.no_resume_msg{
font-family: 'Jua', sans-serif;
color: #383737;
}
</style>

<!-- MAIN -->



<c:if test="${Default[0] == null}">

	<div class="My_Image">
	<img src="resources/images/sorry.png" >		
	</div>

	<h1 class="no_resume_msg">작성한 이력서가 없습니다.</h1>
	

	<br>
	<br>
	<br>
	<p>
		<a href="apply_services_type_en" class="btn btn-primary">지원서 작성하러 가기</a>
	</p>	
</c:if>



<c:if test="${Default[0] != null}">
<form method="post" name="form" id='form'>	
    <div class="layer" >

          <div class="layer_inner">
			<h1>내 이력서 열람</h1>
			<div class="My_Image">
			<img src="resources/upload/${Default[0].my_IMG}" alt="My Image">		
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
				<button type="submit" class="btn btn-primary" id="update" value="이력서 수정" onclick="javascript: form.action='my_resume_update_mypage';">이력서 수정</button>
				<button type="submit" class="btn btn-primary" id="delete" value="이력서 삭제" onclick="javascript: form.action='my_resume_delete_en';">이력서 삭제</button>
				</div>
		    </div>
	    </div>
    </form>
</c:if>
    



