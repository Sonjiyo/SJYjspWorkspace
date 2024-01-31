<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script type="text/javascript" src="common.js"></script>
<%@ include file="./common.jsp" %>
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String gender = request.getParameter("gender");
	
	dao.addMemberList(id, pw, name, gender);
%>
<script>msgUrl('회원가입 완료', "main.jsp")</script>