<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script type="text/javascript" src="common.js"></script>
<%@ include file="./common.jsp" %>
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	if(dao.checkLogin(id, pw)){%>
		<script>msgUrl("로그인 성공", "main.jsp")</script>
	<%}else{%>
		<script>msgUrl("로그인 실패", "loginForm.jsp")</script>
	<%}
%>
