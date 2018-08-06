<%@page import="java.text.SimpleDateFormat"%>
<%@page import="kr.or.ddit.user.board.model.BoardVo"%>
<%@page import="java.util.List"%>
<%@page import="kr.or.ddit.user.board.service.BoardService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	
	<table>
		<thead>
			<tr>
				<th>제목</th>
				<th>사용자 아이디</th>
				<th>별명</th>
				<th>등록일</th>
				
			</tr>
		</thead>
		
		<tbody>
		<%List<BoardVo> boardList = (List)request.getAttribute("boardList");%>
				
						<%
						SimpleDateFormat sdf = new SimpleDateFormat("yyy-MM-dd");
						
						for(BoardVo boardVo : boardList){ %>
							
						<tr><td> <%=boardVo.getTitle()%></td>
							<td> <%=boardVo.getUserId()%></td>
							<td> <%=boardVo.getAlias()%></td>
							<td> <%=sdf.format(boardVo.getRegDt())%></td>
						</tr>
						<%}%> 
		
		</tbody>
		
	</table>
</body>
</html>