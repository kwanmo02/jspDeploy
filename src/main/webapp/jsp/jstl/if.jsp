<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%-- request 객체에 code 속성이 "02"값으로 존재 --%>
	<%
	if(1==2)
		out.write("black");
	%>
	
	<!-- test: 참,거짓 조건 테스트 , c:if 에는 else가 없다 , choose가 일반적인 if -->
	<c:if test="${code=='02'}">
		black
	</c:if>
	
	<h3>c:choose</h3>
	<c:choose>
		<c:when test="${code eq '01' }">black</c:when>
		<c:when test="${code eq '02' }">pink</c:when>
		<c:when test="${code eq '03' }">red</c:when>
		<c:otherwise>line rangers</c:otherwise>		
	</c:choose>
	
	
	
	
	
	
	
</body>
</html>