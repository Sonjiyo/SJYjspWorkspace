<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./header.jsp" %>
<h1>회원가입</h1>
<form action="joinPro.jsp" method="post">
	<table border="1">
		<tr>
			<td>아이디</td>
			<td><input type="text" name="id" required></td>
		</tr>
		<tr>
			<td>패스워드</td>
			<td><input type="password" name="pw" required></td>
		</tr>
		<tr>
			<td>이름</td>
			<td><input type="text" name="name" required></td>
		</tr>
		<tr>
			<td>성별</td>
			<td>
			<input type="radio" name="gender" value="남성" required>남성
			<input type="radio" name="gender" value="여성" required>여성
			</td>
		</tr>
		<tr>
			<th colspan="2"><button>입력완료</button></th>
		</tr>
	</table>
</form>
<%@ include file="./footer.jsp" %>