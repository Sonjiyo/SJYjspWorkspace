<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>로그인 페이지</h1><br>
	<form action="03_22_loginPro.jsp" method="post">
		<table border="1">
			<tr>
				<td>아이디</td>
				<td><input type="text" name="id"></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" name="pw"></td>
			</tr>
			<tr>
				<td colspan="2"><button>로그인</button></td>
			</tr>
		</table>
	</form>
	<button onclick="location.href='02_main.jsp'">메인화면</button>
</body>
</html>