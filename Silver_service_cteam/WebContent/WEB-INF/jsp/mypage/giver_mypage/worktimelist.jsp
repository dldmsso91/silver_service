<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>

<!-- MAIN -->

            <h2>신청 접수된 리스트</h2>
<%--             ${giver_no} --%>
            <table style="text-align:center;margin: auto;    border: 2px solid black;padding: 15px;border-collapse: collapse;width: 100%;">
				<thead>
					<tr>
						<th colspan="3"></th>
					</tr>
					<tr>
		                <td>출근시간</td>
		                <td>퇴근시간</td> 
					</tr>
				</thead>
				<c:forEach items="${work}" var="c">
				<tbody>
		            <tr>
		                <td>${c.start_time}</td> 
		                <td>${c.end_time}</td>      
		            </tr>
		         </tbody>
		         </c:forEach>
		         </table>