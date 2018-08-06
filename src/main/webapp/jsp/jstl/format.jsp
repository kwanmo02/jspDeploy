<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>number</h3>
	<%-- <fmt:setLocale value="de"/> --%>
	<fmt:formatNumber value="${number}" type="number"/><br>
	<fmt:formatNumber value="${number}" type="currency"/><br>
	<fmt:formatNumber value="${number}" type="percent"/><br>
	
	
	<h3>number parse</h3>
	<fmt:parseNumber value="${numberStr }"/>
	
	<h3>date</h3>
	<fmt:formatDate value="${today}" dateStyle="full"/><br>
	<fmt:formatDate value="${today}" dateStyle="medium"/><br>
	<fmt:formatDate value="${today}" dateStyle="short"/><br>
	<fmt:formatDate value="${today}" pattern="yyyy/MM/dd"/><br> <%--많이 쓰임 --%>
	
	<h3>date parse</h3>
	<%--yyyy.mm.dd --> yyyy/mm/dd --%>
	<fmt:parseDate value="${todayStr}" pattern="yyyy.MM.dd"/>
	
	<h3>timeZone</h3>
	<fmt:timeZone value="Korea">
		<fmt:formatDate value="${today}" type="both" timeStyle="full"/><br>
	</fmt:timeZone>	
	
	<fmt:setTimeZone value="Europe/Athens" var="timeZone"/>
	<fmt:formatDate value="${today}" timeZone="${timeZone}" type="both" dateStyle="full"/>
	
	
	
	
	
	
</body>
</html>