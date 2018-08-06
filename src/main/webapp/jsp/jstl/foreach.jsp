<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style>
	th, td{
		border : 1px solid white;
		background : gray;
	}
</style>
</head>
<body>
	<table>
	<tr>
		<th>학생 아이디</th>
		<th>학생 이름</th>
		<th>지명 횟수</th>
	</tr>
	
	
	<c:forEach var="studentVo" items="${studentList}" begin="1" end="5" step="2" varStatus="status">
	<tr>
		<td> ${status.index}번째 : ${studentVo.id}  </td>
		<td>${studentVo.name}</td>
		<td>${studentVo.call_cnt}</td>
	</tr>
	
	</c:forEach>
	
	
	</table>
	
	
	<h3>foreach map</h3>
	<%--map있는 값들을 전부 조회해서 출력
		map.get("name"), map.get("alias")
	 --%>
	 <c:forEach var="entry" items="${map}">
	 	${entry.key} / ${entry.value}
	 
	 </c:forEach>
	
	
	<h3>forTokens</h3>
	<c:forTokens items="${lineRangers }" delims="," var="ranger">
		${ranger}<br>
		
	</c:forTokens>
	
	
	
	
	
</body>
</html>