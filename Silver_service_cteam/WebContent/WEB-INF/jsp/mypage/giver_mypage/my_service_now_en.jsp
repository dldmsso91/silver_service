<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>    



<!-- MAIN -->
                  ${apply}///
                  ${matching}

    <h3>내게 온 신청서 확인하기</h3>
            <form role="form" method="get">
               <table class="table table-hover">
                  <thead>
                     <tr><th>서비스 타입</th><th>도우미 이름</th><th>희망장소</th><th>희망급여</th><th>신청일자</th><th>매칭 상태</th><th></th></tr>
                  </thead>
                  
					<!--apply_to giver table -->                  
                  <c:forEach items="${apply}" var = "a">
                     <tr>
                        <td>${a.customerVO.giver_type}</td>
                        <td>${a.apply_to_giver_no}</td>
                        <td>${a.memberVO.u_name}</td>
                        <td>${a.memberVO.u_addr1}${a.memberVO.u_addr2}</td>
                        <td>${a.customerVO.hope_salary}</td>
                        <td>${a.apply_service_redate}</td>
                  </c:forEach> 
					<!--service matching table -->                  
<%--                   <c:forEach items="${matching}" var = "m"> --%>


<%--                   </c:forEach>  --%>
					<!--apply_to giver table -->                  
<%--                   <c:forEach items="${apply}" var = "a"> --%>
<%--                         <td><a href="customer_detail?customer_no=${a.customer_no}" class="btn btn-primary">상세보기</a></td> --%>
<%--                   </c:forEach>  --%>
                     </tr>                   
               </table>
            </form>
		


