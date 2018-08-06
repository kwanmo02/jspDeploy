<%@page import="java.util.Enumeration"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%--jsp 기본객체(암묵적객체, 묵시적객체, implict object)
		reqeust, response
	  --%>
	<%
		//인자값 : 파라미터 이름
		//userID 파라미터에 대한 값
		String userId= request.getParameter("userId");
		String password= request.getParameter("password");
		String[] userIds=request.getParameterValues("userId");
		
		
		Map<String, String[]> requestMap = request.getParameterMap();
		String[] mapUserIds = requestMap.get("userId");
		
		Enumeration enumeration= request.getParameterNames();
		
	%>  
		<%-- userId : <%=request.getParameter("userId")%><br>
		password : <%=request.getParameter("password")%> --%>
		
		
		<h2> getParameterValues</h2>
		<%
		for(String userId2 : userIds) { %>
			<%=userId2%><br>
		<%}%>
		
		
		<h3>getParameterNames</h3>
		<%
			while(enumeration.hasMoreElements()){ 
				String parameterName = (String)enumeration.nextElement();
			%>
				parameterName : <%=parameterName%>
		<%}%>
	
	  
</body>
</html>