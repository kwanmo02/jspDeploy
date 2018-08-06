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
		//localhost:8280/jsp/implict/pageContext
	
		//reqest, response, session, out, application
		//config
		//pageContext : 다른 객체에 대한 전반적인 정보를 갖고 있습니다.
		
		pageContext.getRequest();	//request 기본객체와 비교
	
		// application -->
		pageContext.getServletContext();	//application
		pageContext.getSession();			//session
		pageContext.getOut();				//out
	%>
		pageContext.getRequest() == reqeust : <%=request.equals(pageContext.getRequest()) %><br>
		pageContext.getServletContext() == application : <%=application.equals(pageContext.getServletContext()) %>	<br>
		pageContext.getSession() == session : <%=session.equals(pageContext.getSession()) %>	<br>
		pageContext.getOut() == out : <%=out.equals(pageContext.getOut()) %>	
</body>
</html>