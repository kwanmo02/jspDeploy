<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
   

<%--localhost:8280/jsp/jstl/redirect.jsp --%>    
<c:redirect url="/jsp/main.jsp">
	<c:param name="redirectFrom" value="redirect.jsp"></c:param>  	<%--파라미터를 넘기는 방법 --%>
</c:redirect>