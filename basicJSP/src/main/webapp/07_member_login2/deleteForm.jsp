<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./header.jsp" %>
<h1>회원탈퇴</h1>
<form action="deletePro.jsp" method="post">
	<table border="1">
		<tr>
			<td>패스워드</td>
			<td><input type="password" name="inputPw"></td>
		</tr>
		<tr>
			<td colspan="2"><button>입력완료</button></td>
		</tr>
	</table>
</form>
<%@ include file="./footer.jsp" %>