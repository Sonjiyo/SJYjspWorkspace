<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>회원탈퇴</h1>
	<form action="03_42_deletePro.jsp" method="post">
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
	<button onclick="location.href='02_main.jsp'">메인화면</button>
</body>
</html>