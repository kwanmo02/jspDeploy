<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- SessionAttribute를 통해 로그인시 application 객체에 loginSessionMap 객체를 속성으로 저장
		
		
		loginSessionMap을 loop를 돌며 데이터를 출력
	
	
	 --%>
	
	loginSession count : [${loginSessionMap.size()}]
	
	<c:forEach var=	"vo" items="${loginSessionMap }">
		${vo.key }	/ ${vo.value }
	
	</c:forEach>
	
</body>
</html>