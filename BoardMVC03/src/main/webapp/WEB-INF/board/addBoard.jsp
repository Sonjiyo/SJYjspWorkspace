<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../header.jsp" %>
<h2>게시글 추가하기</h2>
<form action="${ ctx }/boardAdd.do" method="post" class="w-75">
	<table border="1" class="table">
		<tr>
			<th>번호</th>
			<td>${num}</td>
		</tr>
		<tr>
			<th>작성자</th>
			<td><input type="text" name="user" required class="form-control"></td>
		</tr>
		<tr>
			<th>제목</th>
			<td><input type="text" name="title" required class="form-control"></td>
		</tr>
		<tr>
			<th>내용</th>
			<td><textarea cols="20" rows="10" name="content" class="form-control"></textarea></td>
		</tr>
		<tr style="text-align:center">
			<td colspan="2"><input type="button" class="btn btn-dark" onclick="validCheck(form)" value="작성완료"></td>
		</tr>
	</table>
</form>
</body>
</html>
