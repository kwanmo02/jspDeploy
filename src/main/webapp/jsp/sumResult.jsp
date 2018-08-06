<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	sumResult : <%=request.getAttribute("sumResult") %> <br>
	
	<%
		HttpSession sess = request.getSession();
	%>
	
	기본객체 session sumResult : <%=session.getAttribute("sumResult") %> <br>
	request 객체 session sumResult : <%= sess.getAttribute("sumResult") %> <br>
</body>
</html>