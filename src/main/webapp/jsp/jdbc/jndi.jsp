<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@page import="org.apache.commons.dbcp2.BasicDataSource"%>
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
		Context context = new InitialContext();
		DataSource datesource = (DataSource)context.lookup("java:comp/env/jdbc/oracleDB");	//context.xml의  resource의 name이다.
		
		Connection conn = null;
		
		long startTime = System.currentTimeMillis();

		for (int i = 0; i < 30; i++) {
			try {
				//컨넥션을 100번 얻어 오고 해제한다.
				conn = datesource.getConnection();
				out.write("schema: " + conn.getSchema() + "<br>");
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			} 
		}

		long endTime = System.currentTimeMillis();

		out.write("durig: " + (endTime - startTime) + "ms");
		
		//localhost
	%>
	
	
		
	
</body>
</html>