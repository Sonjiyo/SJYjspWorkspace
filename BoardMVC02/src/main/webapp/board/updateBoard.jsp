<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<h2>게시글 수정하기</h2>
<form action="${ ctx }/boardUpdate.do" method="post">
	<table border="1">
		<tr>
			<th>번호</th>
			<td colspan="3">${ vo.num }</td>
		</tr>
		<tr>
			<th>작성자</th>
			<td>${ vo.user }</td>
			<th>작성일</th>
			<td>${ vo.date }</td>
		</tr>
		<tr>
			<th>제목</th>
			<td colspan="3"><input type="text" name="title" value="${ vo.title }" required></td>
		</tr>
		<tr>
			<th>내용</th>
			<td colspan="3"><textarea cols="20" rows="10" name="content">${ vo.content }</textarea></td>
		</tr>
		<tr>
			<td colspan="4">
				<input type="hidden" name="num" value="${ vo.num }">
				<button>수정하기</button>
			</td>
		</tr>
	</table>
</form>
</body>
</html>