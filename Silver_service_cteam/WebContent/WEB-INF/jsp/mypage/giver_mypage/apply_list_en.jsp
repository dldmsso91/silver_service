<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>    



<!-- MAIN -->

    <h3>내게 온 신청서 확인하기</h3>
            <form role="form" method="get">
               <table class="table table-hover">
                  <thead>
                     <tr><th>번호</th><th>신청자</th><th>희망주소</th><th>희망장소</th><th>희망급여</th><th>등록일</th><th></th></tr>
                  </thead>
                  
                  <c:forEach items="${apply}" var = "a">
                     <tr>
                        <td>${a.apply_to_giver_no}</td>
                        <td>${a.memberVO.u_name}</td>
                        <td>${a.memberVO.u_addr1}${a.memberVO.u_addr2}</td>
                        <td>${a.customerVO.hope_service_place}</td>
                        <td>${a.customerVO.hope_salary}</td>
                        <td>${a.apply_service_redate}</td>

                        <td><a href="customer_detail?customer_no=${a.customer_no}" class="btn btn-primary">상세보기</a></td>
                     </tr>                   
                  </c:forEach> 
               </table>
            </form>
		


