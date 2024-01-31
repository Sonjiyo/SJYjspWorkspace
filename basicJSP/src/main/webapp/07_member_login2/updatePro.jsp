<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script type="text/javascript" src="common.js"></script>
<%@ include file="./common.jsp" %>
<%
	String name = request.getParameter("inputName");
	String gender = request.getParameter("gender");
	String pw = request.getParameter("inputPw");
	
	if(pw.equals(dao.getPw(log))){
		dao.setName(log, name);
		dao.setGender(log, gender);
		%>
		<script>msgUrl('변경 완료되었습니다.', 'main.jsp')</script>
		<%
	}else{
		%>
		<script>msgUrl('비밀번호가 잘못되었습니다.', 'updateForm.jsp')</script>
		<%
	}
	
%>