<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 각 영역별로 ㄱ밧을 하나씩 전달할 파라미터 -->
	<form action="/jsp/scope/scopeSetAttr.jsp" method="post">
		<input type="text" name="pageScope" value="pageScopeValue"/>	<br>
		<input type="text" name="requestScope" value="requestScopeValue"/><br>
		<input type="text" name="sessionScope" value="sessionScopeValue"/><br>
		<input type="text" name="applicationScope" value="applicationScopeValue"/><br>
		<input type="submit" value="전송"/>
	</form>
</body>
</html>