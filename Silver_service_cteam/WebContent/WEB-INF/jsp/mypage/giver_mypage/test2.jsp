<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>    



<!-- MAIN -->


<c:forEach items="${customer_no}" var = "c">

${c.giver_type}

</c:forEach>