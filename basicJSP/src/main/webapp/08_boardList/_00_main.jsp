<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script type="text/javascript" src="common.js"></script>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BoardList</title>
</head>
<body>
<%@ include file="./common.jsp" %>
	<h1>게시판</h1>
	<a href="_01_boardList.jsp">전체 게시글 확인하기</a><br><br>
	<a href="_02_addDummyPro.jsp">더미 게시글 추가하기</a><br><br>
	<a href="_03_deleteAllBoard.jsp">전체 게시글 삭제하기</a><br><br>
	<a href="_04_addBoard.jsp">게시글 추가하기</a><br><br>
	<hr><br>
	<a href="_07_boardListPaging.jsp">페이징 게시판</a>
</body>
</html>