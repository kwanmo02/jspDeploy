<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 다른경로의 jsp파일을 그대로 불러올때 -->
	<!-- 해당 파일에 가서 필요없는 부분을 지워준다. 개발자모드로 확인해본다. -->
	<%@include file="/common/header.jsp"%>
	
	<h2>staticMain.jsp</h2>
	
	<%@include file="/common/bottom.jsp"%>
	
	
</body>
</html>
<%-- 
	localhost:8280/jsp/staticInclude.jsp
--%>