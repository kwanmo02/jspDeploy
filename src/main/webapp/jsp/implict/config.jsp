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
	//localhost:8280/jsp/implict/config.jsp
	//jsp 기본객체 : reqeust, response, session, out, application
	//config : 설정 --> application을 통해서 대체 가능
	config.getInitParameter("ADMIN_USER");
	application.getInitParameter("ADMIN_USER");
%>
config.getInitParameter("ADMIN_USER") : <%=config.getInitParameter("ADMIN_USER")%><br>
config.getInitParameter("ADMIN_USER") : <%=application.getInitParameter("ADMIN_USER")%>
</body>
</html>