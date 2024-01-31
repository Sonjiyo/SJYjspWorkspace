<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<script type="text/javascript" src="common.js"></script>
<%@ include file="./sessionCheck.jsp" %>
<%@ include file="./common.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 로그인 구현 실습</title>
<style>
	ul{display:flex;padding:20px 10px;}
	li{list-style:none;margin-right:50px;}
	h1{text-align:center;}
</style>
</head>
<body>
	<ul class="nav">
		<li><a href="main.jsp">홈</a></li>
	<%if(log==-1) {%>
		<li><a href="joinForm.jsp">회원가입</a></li>
		<li><a href="loginForm.jsp">로그인</a></li>
		<%}else if(log==0){ %>
		<li><a href="logoutPro.jsp">로그아웃</a></li>
		<li><a href="adminUserList.jsp">전체회원보기</a></li>
		<%}else{ %>
		<li><a href="logoutPro.jsp">로그아웃</a></li>
		<li><a href="updateForm.jsp">회원정보수정</a></li>
		<li><a href="deleteForm.jsp">회원탈퇴</a></li>
		<%} %>
	</ul>
	<hr>
	<div align="center">