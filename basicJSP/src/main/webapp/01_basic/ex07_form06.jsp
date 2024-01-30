<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<a href="ex05_form04.jsp">form4로 이동</a>
	<button onclick="movePage()">form 3로 이동</button>
	
	<form action="ex08_form06pro.jsp"> <!-- action을 주지 않으면 본인 페이지에 준다 -->
		<input type="number" id="num1" name ="num1">
		<input type="number" id="num2" name ="num2">
		<input type="button" value="버튼1">
		<input type="submit" value="버튼2">
		<button>전송1</button> <!-- input type submit은 form안의 버튼과 동일하게 작동한다 -->
	</form>
		<button id="btn1">전송2</button>
</body>
</html>
<script>
	document.querySelector("#btn1").addEventListener("click", gonextPage);

	function movePage(){
		location.href="ex04_form03.jsp";	
	}
	function gonextPage(){
		let value1 = document.querySelector("#num1").value;
		let value2 = document.querySelector("#num2").value;
		location.href="ex08_form06pro.jsp?num="+value1+"&num2="+value2;
	}
</script>