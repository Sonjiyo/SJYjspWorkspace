<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	ArrayList<String> idList = (ArrayList)session.getAttribute("idList");
	ArrayList<String> pwList = (ArrayList)session.getAttribute("pwList");
	ArrayList<String> nameList = (ArrayList)session.getAttribute("nameList");
	ArrayList<String> genderList = (ArrayList)session.getAttribute("genderList");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>관리자 페이지(회원 정보 확인하기)</h1>
	<table border="1">
		<tr>
			<td>아이디</td>
			<td>패스워드</td>
			<td>이름</td>
			<td>성별</td>
			<td>삭제</td>
		</tr>
		<%for(int i=0; i<idList.size(); i++){%>
			<tr>
				<td><%= idList.get(i)%></td>
				<td><%= pwList.get(i)%></td>
				<td><%= nameList.get(i)%></td>
				<td><%= genderList.get(i)%></td>
				<td>
					<button onclick="location.href='01_13_adminDelete.jsp?idx=<%=i%>'">삭제</button>
				</td>
			</tr>
		<%}%>
	</table>
	<button onclick="location.href='01_11_adminMain.jsp'">메인화면</button>
</body>
</html>