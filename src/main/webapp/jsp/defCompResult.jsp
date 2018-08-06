<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="textW/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- 파라미터 확인 --%>
	<%-- request.defComp : ${defComp} 속성에서 값 확인<br> --%>
	
	request.defComp : ${param.defComp} <%--request 객체의 파라미터 값 확인 --%><br>
	
	<%-- request.defComp : ${cookies.defComp} cookie 값 확인<br> --%>
	
</body> 
</html>