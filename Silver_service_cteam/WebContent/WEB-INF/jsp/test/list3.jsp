<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<H1>Result Map Join Test Page</H1>
<form action="updateGiver" method="post">
      <h2>member Table</h2>
      회원 아이디 : <input type="text" name="u_id" value="${Default[0].memberVO.u_id}"><br/>
      회원 이름 :  <input type="text" name="u_name" value="${Default[0].memberVO.u_name}"><br/>
      회원 주민번호 : <input type="text" name="u_birth" value="${Default[0].memberVO.u_birth}"><br/>
      회원 핸드폰번호 :  <input type="text" name="u_phone" value="${Default[0].memberVO.u_phone}"><br/>
      회원 이메일 :  <input type="text" name="u_email" value="${Default[0].memberVO.u_email}"><br/>
      회원 주소 : <input type="text" name="u_addr" value=" ${Default[0].memberVO.u_addr}"><br/>
      회원 가입날자 : <input type="text" name="u_redate" value=" ${Default[0].memberVO.u_redate}"><br/>
      <hr/>
      
      
      
      
      <h2>giver Table</h2>
      도우미 타입 : <input type="text" name="giver_type" value=" ${Default[0].giver_type}"><br/>
      도우미 희망 근무장소 :  <input type="text" name="hope_business_place" value="${Default[0].hope_business_place}"><br/>
      도우미 희망 연봉 :  <input type="text" name="hope_salary" value="${Default[0].hope_salary}"><br/>
      도우미 흡연 여부 : <input type="text" name="smoking" value=" ${Default[0].smoking}"><br/>
      도우미 학력 :  <input type="text" name="school" value="${Default[0].school}"><br/>
      도우미 전공 : <input type="text" name="major" value=" ${Default[0].major}"><br/>
      도우미 패널티 받은 횟수 : <input type="text" name="penalty" value=" ${Default[0].penalty}"><br/>
      도우미 지원한 날자 :  <input type="text" name="apply_giver_redate" value="${Default[0].apply_giver_redate}"><br/>
      <hr/>
      
      
      
      
      <h2>license Table</h2>
<c:forEach items="${License}" var="g">
   <c:forEach items="${g.licenseVO}" var="l">
      라이센스 이름 :  <input type="text" name="license_name" value="${l.license_name}"><br/>
      라이센스 발행처 : <input type="text" name="license_Institute" value="${l.license_Institute}"><br/>
      라이센스 발급일 : <input type="text" name="license_Redate" value=" ${l.license_Redate}"><br/>
   </c:forEach>
</c:forEach>
      <hr/>
      
      
      
      
      <h2>career Table</h2>
<c:forEach items="${Career}" var="g">
   <c:forEach items="${g.careerVO}" var="c">
      회사 명 : <input type="text" name="career_name" value="${c.career_name}"><br/>
      회사 다닌 기간 : <input type="text" name="work_Period" value="${c.work_Period}"><br/>
      회사 맡은 역할 : <input type="text" name="role" value="${c.role}"><br/>
   </c:forEach>
</c:forEach>
      <hr/>
      
      
      
      
      <h2>Giver_Satisfaction Table</h2>
<c:forEach items="${Satisfaction}" var="g">
   <c:forEach items="${g.giver_satisfactionVO}" var="s">
      일일만족도 점수 : <input type="text" name="customer_satisfaction_score" value="${s.customer_satisfaction_score}"><br/>
      일일만족도 컴플레인 사항 : <input type="text" name="customer_satisfaction_complain" value="${s.customer_satisfaction_complain}"><br/>
      일일만족도 작성날짜 : <input type="text" name="giver_Satisfaction_redate" value="${s.giver_Satisfaction_redate}"><br/>
   </c:forEach>
</c:forEach>
      <hr/>
      
      
      
      
      
      <h2>Hope_Business_Area Table</h2>
<c:forEach items="${Area}" var="g">
   <c:forEach items="${g.hope_business_areaVO}" var="a">
      희망근무지역 도시 : <input type="text" name="hope_business_city" value="${a.hope_business_city}"><br/>
      희망근무지역 시/도 : <input type="text" name="hope_business_town" value="${a.hope_business_town}"><br/>
   </c:forEach>
</c:forEach>
<input type="submit" id="update"value="내 정보 수정" />
</form>
   <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
   <script>
//    $(function(){
   
// 		$('#update').click(function(){
		
// 				location="updateDefault_info";
// 	});
// 	});
   
   
   </script>
</body>