<%@page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.Date"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- <% %>: 스크립틀릿 -->
	<%
	
	//이 부분은 자바 코드 작성 방법이 적용된다.
	Date dt = new Date();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	
	%>
	
	hello servlet world <br>
	current time : <%=sdf.format(dt)%> 	<!-- 표현식 -->
	<%-- JSP주석 --%>
</body>
</html>

<!-- 
	localhost:8180/jsp/basic.jsp
 -->