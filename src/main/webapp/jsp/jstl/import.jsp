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
	<!-- localhost:8280/jsp/jstl/import.jsp -->
	<c:import url="main.jsp" var="page"></c:import>


	<c:import url="https://search.naver.com/search.naver">
		<c:param name="query" value="html5"/>
	</c:import>
</body>
</html>