<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	td {
	border : 1px solid gray;
	background : gray
	}
	
</style>
</head>
<body>
<table>

	<% for(int i=1; i<=9; i++){ %>
	<tr>
		<% for(int j=2; j<=9; j++){ %>
			<td><%=j%> * <%= i%> = <%=j*i%> </td>
		<%} %>
	</tr>
	<%}%> 


</table>
	
	
</body>
</html>