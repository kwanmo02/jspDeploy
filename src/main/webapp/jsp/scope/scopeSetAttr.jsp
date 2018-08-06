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
		//값을 각 영역에 설정(page, reqeust, session, application )
		pageContext.setAttribute("pageScope", request.getParameter("pageScope"));
		request.setAttribute("requestScope", request.getParameter("reqeustScope"));
		session.setAttribute("sessionScope", request.getParameter("sessionScope"));
		application.setAttribute("applicaionScope", request.getParameter("applicationScope"));
		
		//각 영역의 속성을 출력해 줄 결과 화면으로 위임(dispatch forward)
		RequestDispatcher rd =  request.getRequestDispatcher("/jsp/scope/scopeResult.jsp");
		rd.forward(request, response);
	%>
</body>
</html>