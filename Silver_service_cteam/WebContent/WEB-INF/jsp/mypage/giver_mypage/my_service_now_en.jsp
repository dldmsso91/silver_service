<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>  
  
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
<style>
.table {
    width: 100%;
    margin-bottom: 1rem;
    text-align: center;
    margin: 0 auto;
    margin-top: 50px;
}
.no_resume_msg{
font-family: 'Jua', sans-serif;
color: #383737;
}
</style>

<!-- MAIN -->


<%-- 	<c:if test="${apply[0] == null & terminate_customer_info[0] ==null}"> --%>
	<c:if test="${apply[0] == null && matching_giver_info[0] ==null}">
	
		<br>
		<br>
		<div class="My_Image">
		<img src="resources/images/sorry.png" >		
		</div>
		<br>
		<h1 class="no_resume_msg">아직 도우미에게 신청을 보내지 않았습니다</h1>
		<h5 class="no_resume_msg">*서비스 신청서 작성 후 부터 이용이 가능하십니다*</h5>		
	</c:if>
	
<%-- 	<c:if test="${apply[0] != null & terminate_customer_info[0] ==null}}"> --%>
	<c:if test="${apply[0] != null || matching_giver_info[0] !=null}">
    <h3>내 신청상태 확인하기</h3>
            <form role="form" method="get">
               <table class="table table-hover">
                  <thead>
                     <tr><th>서비스 타입</th><th>도우미 이름</th><th>희망장소</th><th>전화번호</th><th>신청일자</th><th>매칭 상태</th><th>도우미 상세보기</th></tr>
                  </thead>
                  
					<!--service matching table -->    
					<c:forEach items="${terminate_customer_info}" var = "t">
						<tr>
							<td>${t.customerVO.giver_type}</td>
                        	<td>${t.memberVO.u_name}</td>
							<td>${t.memberVO.u_addr1}${m.memberVO.u_addr2}</td>
							<td>${t.memberVO.u_phone}</td>
							<td>${t.terminate_giver_service_redate}</td>
				            	<td>종료</td>							
	                        <td style="width: 15%;"><a href="apply_giver_detail?giver_no=${t.giver_no}" >
	                        <img src="resources/images/apply5.png" style="width: 25%;"></a>
	                        </td>
						</tr>                   
					</c:forEach> 
					<!--service matching table -->    
					<c:forEach items="${matching_giver_info}" var = "m">
						<tr>
							<td>${m.customerVO.giver_type}</td>
                        	<td>${m.memberVO.u_name}</td>
							<td>${m.memberVO.u_addr1}${m.memberVO.u_addr2}</td>
							<td>${m.memberVO.u_phone}</td>
							<td>${m.service_matching_redate}</td>
				            	<td>진행</td>							
	                        <td style="width: 15%;"><a href="apply_giver_detail?giver_no=${m.giver_no}" >
	                        <img src="resources/images/apply5.png" style="width: 25%;"></a>
	                        </td>
						</tr>                   
					</c:forEach> 
					<!--apply_to giver table -->                  
					<c:forEach items="${apply}" var = "a">
						<tr>
							<td>${a.customerVO.giver_type}</td>
                        	<td>${a.memberVO.u_name}</td>
							<td>${a.memberVO.u_addr1}${a.memberVO.u_addr2}</td>
							<td>${a.memberVO.u_phone}</td>
							<td>${a.apply_service_redate}</td>					
				            	<td>대기</td>							
	                        <td style="width: 15%;"><a href="apply_giver_detail?giver_no=${a.giver_no}" >
	                        <img src="resources/images/apply5.png" style="width: 25%;"></a>
	                        </td>
						</tr>                   
					</c:forEach> 
               </table>
            </form>
	</c:if>		

		


