<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<%@ include file="/common/jQuery.jsp" %>

</head>
<script>
	//페이지 로딩시 select box 설정
	$("select[name=locale]").val("${locale}").prop("selected", true);
	
	//select box 변경 이벤트
	$(function(){
		$("select[name=locale]").change(function(){
			$("form").submit();			
		});
		
	});
</script>

<body>
	<form action="/localeSelect" method="get">
		<select name="selectBox">
			<option value="ko">한국어 </option>
			<option value="ja">日本語 </option>
			<option value="en"> English</option>
		</select>
		<input type="submit" value="submit"/>
	</form>

		 <%--c:set --%>
		 <c:set var="userId" value="양관모"></c:set>

		<fmt:setLocale value="${locale}"/>	
		<fmt:bundle basename="kr.or.ddit.msg.msg">]

			<fmt:message key="hello"/><br>
			<fmt:message key="visitor">
				<fmt:param value="${userId}"/>
			</fmt:message><br>

		</fmt:bundle>
	
	
</body>
</html>