<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setAttribute("userId", "black");
 		request.getRequestDispatcher("/common/header.jsp").include(request, response); 
/* 		RequestDispatcher rd =request.getRequestDispatcher("/common/header.jsp");  */
		/*  rd.include(request, response); */
		 
		
	%>
	
	<h3>dynamicInclude.jsp</h3>
	
	<%--
		localhost:8280/jsp/dynamicInclude.jsp
	 --%>
</body>
</html>