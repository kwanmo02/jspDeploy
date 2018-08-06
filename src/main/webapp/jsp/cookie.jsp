<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

</head>

<script src="/js/js.cookie.js"></script>

<body>
	<%
	
		//localhost:8280/jsp/cookie.jsp
		Cookie[] cookies = request.getCookies();
		for(Cookie cookie : cookies){
			out.write(cookie.getName()+ ":" + cookie.getValue() + "<br>");
		}
		
		Cookie newCookie = new Cookie("serverCookie", "serverCookieValue");
		newCookie.setMaxAge(60*60*24*30);	//60초, 60분, 24시간, 30일
		response.addCookie(newCookie);
		
	%>
</body>
</html>