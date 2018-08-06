<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
 <%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"


    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- db connection 얻는 방법 3가지 
		1. jdbc
		2. application connection pool
		3. was connection pool (jndi)
		
		각 방법별로 컨넥션을 생성하는 시간 profiling
	
	-->
	<%
		//db 설정에 대한 값 설정
		String driverClassName = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String userName = "pc21";
		String password = "java";
		Connection conn = null;
		
		long startTime = System.currentTimeMillis();

		for (int i = 0; i < 20; i++) {
			try {
				//컨넥션을 100번 얻어 오고 해제한다.
				Class.forName(driverClassName);
				conn = DriverManager.getConnection(url, userName, password);
				out.write("schema: " + conn.getSchema() + "<br>");
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			} 
		}

		long endTime = System.currentTimeMillis();

		out.write("durig: " + (endTime - startTime) + "ms");
	%>
		
	
</body>
</html>