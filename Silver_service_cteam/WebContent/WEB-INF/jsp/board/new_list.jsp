<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
	<head>
	 	<title>새소식</title>
	</head>
	<body>
		<div id="root">
			<header>
				<h1>새소식</h1>
			</header>
			<hr />
			 
			<div>
				<%@include file="new_nav.jsp" %>
			</div>
			<hr />
			
			<section id="container">
				<form role="form" method="post" action="write">
					<table>
						<tr><th>번호</th><th>제목</th><th>작성자</th><th>등록일</th></tr>
						
						<c:forEach items="${list}" var = "list">
							<tr>
								<td><c:out value="${list.nbno}" /></td>
								<td>
									<a href="new_readView?bno=${list.nbno}"><c:out value="${list.ntitle}" /></a>
								</td>
								<td><c:out value="${list.nwriter}" /></td>
								<td><fmt:formatDate value="${list.nregdate}" pattern="yyyy-MM-dd"/></td>
							</tr>
						</c:forEach>
						
					</table>
				</form>
			</section>
			<hr />
		</div>
	</body>
</html>