<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
tr, td{
		border : 1px solid gray;
		
	}
</style>
</head>
<body>
	<table>
	
		<c:forEach begin="2" end="9" step="1" var = "i">
			<tr>
			<c:forEach begin="1" end="9" step="1" var = "j">
				<td>${i} * ${j} = ${i*j}</td>
			</c:forEach>
			</tr>
		</c:forEach>

	</table>
</body>
</html>