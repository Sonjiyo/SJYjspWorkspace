<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<h2>게시글 추가하기</h2>
<form action="${ ctx }/boardAdd.do" method="post">
	<table border="1">
		<tr>
			<th>번호</th>
			<td>1</td>
		</tr>
		<tr>
			<th>작성자</th>
			<td><input type="text" name="user" required></td>
		</tr>
		<tr>
			<th>제목</th>
			<td><input type="text" name="title" required></td>
		</tr>
		<tr>
			<th>내용</th>
			<td><textarea cols="20" rows="10" name="content"></textarea></td>
		</tr>
		<tr>
			<td colspan="2"><button>작성완료</button></td>
		</tr>
	</table>
</form>
</body>
</html>