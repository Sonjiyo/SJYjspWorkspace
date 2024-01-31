<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int log = (int)session.getAttribute("log");
	String id = ((ArrayList<String>)session.getAttribute("idList")).get(log);
	String pw = ((ArrayList<String>)session.getAttribute("pwList")).get(log);
	String name = ((ArrayList<String>)session.getAttribute("nameList")).get(log);
	String gender = ((ArrayList<String>)session.getAttribute("genderList")).get(log);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>회원정보 수정</h1>
	<form action="03_32_updatePro.jsp" method="post">
		<table border="1">
			<tr>
				<td>아이디</td>
				<td><%= id%></td>
			</tr>
			<tr>
				<td>패스워드</td>
				<td><input type="password" name="inputPw"></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" value="<%= name%>" name="inputName"></td>
			</tr>
			<tr>
				<td>성별</td>
				<td>
				<input type="radio" name="gender" value="남성" <%if(gender.equals("남성")){%>checked<%}%>>남성
				<input type="radio" name="gender" value="여성" <%if(gender.equals("여성")){%>checked<%}%>>여성
				</td>
			</tr>
			<tr>
				<th colspan="2"><button>입력완료</button></th>
			</tr>
		</table>
	</form>
	<button onclick="location.href='02_main.jsp'">메인화면</button>
</body>
</html>