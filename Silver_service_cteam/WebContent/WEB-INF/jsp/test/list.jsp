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

      <h2>member Table</h2>
      회원 아이디 : ${giver[0].memberVO.u_id}<br/>
      회원 이름 : ${giver[0].memberVO.u_name}<br/>
      회원 주민번호 : ${giver[0].memberVO.u_birth}<br/>
      회원 핸드폰번호 : ${giver[0].memberVO.u_phone}<br/>
      회원 이메일 : ${giver[0].memberVO.u_email}<br/>
      회원 주소 : ${giver[0].memberVO.u_addr}<br/>
      회원 가입날자 : ${giver[0].memberVO.u_redate}<br/>
      <hr/>
      <h2>giver Table</h2>
      도우미 타입 : ${giver[0].giver_type}<br/>
      도우미 희망 근무장소 : ${giver[0].hope_business_place}<br/>
      도우미 희망 연봉 : ${giver[0].hope_salary}<br/>
      도우미 흡연 여부 : ${giver[0].smoking}<br/>
      도우미 학력 : ${giver[0].school}<br/>
      도우미 전공 : ${giver[0].major}<br/>
      도우미 패널티 받은 횟수 : ${giver[0].penalty}<br/>
      도우미 지원한 날자 : ${giver[0].apply_giver_redate}<br/>
      <hr/>
      <h2>license Table</h2>
<c:forEach items="${giver}" var="g">
      라이센스 이름 : ${g.licenseVO.license_name}<br/>
      라이센스 발행처 :${g.licenseVO.license_Institute}<br/>
      라이센스 발급일 : ${g.licenseVO.license_Redate}<br/>
</c:forEach>
      <hr/>
      <h2>career Table</h2>
<c:forEach items="${giver}" var="g">
      회사 명 :${g.careerVO.career_name}<br/>
      회사 다닌 기간 :${g.careerVO.work_Period}<br/>
      회사 맡은 역할 :${g.careerVO.role}<br/>
</c:forEach>
      <hr/>
      <h2>Giver_Satisfaction Table</h2>
<c:forEach items="${giver}" var="g">
      일일만족도 점수 :${g.giver_satisfactionVO.customer_satisfaction_score}<br/>
      일일만족도 컴플레인 사항 :${g.giver_satisfactionVO.customer_satisfaction_complain}<br/>
      일일만족도 작성날짜 :${g.giver_satisfactionVO.giver_Satisfaction_redate}<br/>
</c:forEach>
      <hr/>
      <h2>Hope_Business_Area Table</h2>
<c:forEach items="${giver}" var="g">
      희망근무지역 도시 :${g.hope_business_areaVO.hope_business_city}<br/>
      희망근무지역 시/도 :${g.hope_business_areaVO.hope_business_town}<br/>
</c:forEach>

</body>
