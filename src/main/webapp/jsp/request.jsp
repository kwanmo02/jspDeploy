<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>

<body>
	<%-- 스크립틀릿에서는 자바 코드를 작성할 수 있다.--%>
	<%
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		//jps 기본객체 : request, response
	
		request.getLocalAddr();
	%>
	
		request.getLocalAddr() : <%=request.getLocalAddr()%><br>
		request.getLocalport() : <%=request.getLocalPort()%><br>
		request.getRemoteAddr() : <%=request.getRemoteAddr()%><br>
		request.getRemoteHost() : <%=request.getRemoteHost()%><br>
		request.getRemotePort() : <%=request.getRemotePort()%><br>
		request.getCharacterEncoding() : <%=request.getCharacterEncoding()%><br>
		request.getContentType(): <%=request.getContentType()%><br>
		request.getContextPath: <%=request.getContextPath()%><br>
		request.getRequestURL(): <%=request.getRequestURL()%><br>
		request.getServerName(): <%=request.getServerName()%><br>
		request.getServerPort(): <%=request.getServerPort()%><br>
		request.getMethod(): <%=request.getMethod()%>
		
		
		
		
</body>
</html>