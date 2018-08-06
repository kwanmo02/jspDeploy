<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%--factorial method
	0!=1
	1!=1
	2!=2
	3!=6
	4!=24
	5!=120
	 --%>
	 
	 <%!
	 	public int factorial(int fac){
		 if(fac<2)
			 return 1;
		 return fac * factorial(fac-1);
	 }
	 %>
	 
	 <%for(int i = 0; i<10; i++){ %>
	 
	 	factorial(<%=i%>) : <%=factorial(i)%><br>
	 	
	 <% }%>
	 
	 
	<%--  factorial(0) : <%=factorial(0)%> <br>
	 factorial(1) : <%=factorial(1)%> <br>
	 factorial(2) : <%=factorial(2)%> <br>
	 factorial(3) : <%=factorial(3)%> <br>
	 factorial(4) : <%=factorial(4)%> <br>
	 factorial(5) : <%=factorial(5)%> <br> --%>
	 
	 
	 
</body>
</html>