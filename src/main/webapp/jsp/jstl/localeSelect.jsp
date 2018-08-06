<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script src="../jquery-1.12.4.js"></script>
<body>
	<form action="/localeSelect" method="get">
	<select id="selectBox" name="selectBox">
		<option value="ko" <c:if test= "${locale=='ko'}">selected</c:if>>한국어 </option>
		<option value="ja" <c:if test="${locale=='ja'}">selected</c:if>>日本語 </option>
		<option value="en" <c:if test="${locale=='en'}">selected</c:if>>English</option>
	</select>
	
	
	 <%--c:set --%>
	 <c:set var="userId" value="양관모"></c:set>
	
	<fmt:setLocale value="${locale}"/>	
	<fmt:bundle basename="kr.or.ddit.msg.msg">]
	
		<fmt:message key="hello"/><br>
		<fmt:message key="visitor">
			<fmt:param value="${userId}"/>
		</fmt:message><br>
	
	</fmt:bundle>
	
	<button type="submit">나와라</button>
	</form>
</body>
</html>