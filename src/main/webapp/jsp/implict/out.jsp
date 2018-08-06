<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style>
	td {
	border : 1px solid gray;
	background : gray
	}
	
</style>

</head>



<body>
	<%
		//기본객체 : request, response, session
		//out 객체 : servlet의 printWriter의 유사한 객체
		//localhost:8280/jsp/implict/out.jsp
		
		out.write("sumResult: "  + session.getAttribute("sumResult"));
		out.write("<br>");
	%>
	
	
	
	
		<% 
		out.write("<table>");
		
		for(int i=1; i<=9; i++){ 
		out.write("<tr>");
		for(int j=2; j<=9; j++)
			out.write("<td>" + j + "*" + i + "=" + i*j + "</td>");
			out.write("</tr>");
		}
		out.write("</table>");
	%>
	
	

	
	
</body>
</html>