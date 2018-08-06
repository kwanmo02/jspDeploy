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
<body>
	<%--
		작성된 msg파일
		msg.properties
		msg_ko.properties
		msg_en.properties
		msg_ja.properties
	 --%>
	 
	 
	 <%
	 	pageContext.setAttribute("userId", "black");
	 
	 %>
	 
	 
	 
	 <%--c:set --%>
	 <c:set var="userId" value="양관모"></c:set>
	 
	 
	 <%--setLocale 태그를 통해 임의로 로케일을 수정 --%>
	 <fmt:setLocale value="ja"/>
	 
	 
	<fmt:bundle basename="kr.or.ddit.msg.msg">
	
		<fmt:message key="hello"/><br>
		<fmt:message key="visitor">
			<fmt:param value="${userId}"></fmt:param>
		</fmt:message><br>
	
	</fmt:bundle>
	
	
	
	<h3>SetBundle</h3>
	<fmt:setLocale value="en"/>
	<fmt:setBundle basename="kr.or.ddit.msg.msg" var="msg"/>
	<fmt:message bundle="${msg}" key="hello"/>
	<fmt:message bundle="${msg}" key="visitor">
		<fmt:param value="${userId}"></fmt:param>
	</fmt:message>
	
	
	
	
	
	
	
	
	
</body>
</html>