<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./common.jsp" %>
<%
	int idx = Integer.parseInt(request.getParameter("idx"));
	int num = dao.getContentNum(idx);
	String title = dao.getTitle(idx);
	String user = dao.getUser(idx);
	String date = dao.getDate(idx);
	String content = dao.getContent(idx);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>게시글 수정하기</h1>
	<form action="_05_updateBoardPro.jsp">
		<table border="1">
			<tr>
				<th>번호</th>
				<td colspan="3"><%=num%></td>
			</tr>
			<tr>
				<th>작성자</th>
				<td><%=user%></td>
				<th>작성일</th>
				<td><%=date%></td>
			</tr>
			<tr>
				<th>제목</th>
				<td colspan="3"><input type="text" name="title" value="<%=title%>" required></td>
			</tr>
			<tr>
				<th>내용</th>
				<td colspan="3"><textarea cols="20" rows="10" name="content"><%=content%></textarea></td>
			</tr>
			<tr>
				<td colspan="4">
					<input type="hidden" name="idx" value="<%=idx%>">
					<button>수정하기</button>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>