<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<tags:logging/>	<%--태그를 만들어 주고 여기에 넣어줬다. --%>
		<br>
		<c:forEach var="studentList" items="${studentList}">
			${studentList.id} / ${studentList.name} / ${studentList.call_cnt}/<fmt:formatDate value="${studentList.reg_dt}"/><br>
		</c:forEach>
	<tags:logging/>
	
	
	
	<h3>colorLogging</h3>
	<tags:colorLogging color="blue"/>
		<br>
		<c:forEach var="studentList" items="${studentList}">
			${studentList.id} / ${studentList.name} / ${studentList.call_cnt}/<fmt:formatDate value="${studentList.reg_dt}"/><br>
		</c:forEach>
	<tags:colorLogging color="blue"/>
	
	
	<h3>prod</h3>
	<tags:prodSelect lgu='P102'/>
	
</body>
</html>