<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- 파일 전송을 위해서 enctype을  multipart/form-data로 수정해야 한다.--%>
	<form action="/fileUpload" method="post" enctype="multipart/form-data">
		<input type="text" name="userId" value="black"/><br>
		<input type="file" name="uploadFile"/><br>
		<input type="submit" value="전송"/>
	</form>
</body>
</html>