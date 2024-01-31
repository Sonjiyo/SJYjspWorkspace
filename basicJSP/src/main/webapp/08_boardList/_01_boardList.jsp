<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./common.jsp" %>
<%int size = dao.getBoardListSize(); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BoardList</title>
</head>
<body>
<p>전체 게시글 수 : <%=size%>개</p>
<table border="1">
	<tr>
		<th>번호</th>
		<th>작성자</th>
		<th>작성일</th>
		<th>제목</th>
		<th>내용</th>
		<th>삭제</th>
	</tr>
	<%
		for(int i =0; i<size; i++){%>
			<tr>
				<td><%=dao.getContentNum(i)%></td>
				<td><%=dao.getUser(i)%></td>
				<td><%=dao.getDate(i)%></td>
				<td><a href="_05_updateBoard.jsp?idx=<%=i%>"><%=dao.getTitle(i)%></a></td>
				<td><%=dao.getContent(i)%></td>
				<td><button onclick="location.href='_06_deleteBoardPro.jsp?idx=<%=i%>'">삭제하기</button></td>
			</tr>
		<%}
	%>
	<tr>
		<td colspan="6"><button onclick="location.href='_00_main.jsp'">메인화면</button></td>
	</tr>
</table>
</body>
</html>