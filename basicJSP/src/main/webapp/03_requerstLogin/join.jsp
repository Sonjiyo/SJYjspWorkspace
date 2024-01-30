<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>회원가입</h1>
	<form action="joinPro.jsp">
		이름 : <input type="text" name="name"><br>
		아이디 : <input type="text" name="id"><br>
		비밀번호 : <input type="text" name="pw"><br>
		<button>회원가입</button>
	</form>
	<button onclick="gotoHome()">홈으로</button>
</body>
</html>
<script>
	function gotoHome() {
		location.href="index.jsp";
	}
</script>