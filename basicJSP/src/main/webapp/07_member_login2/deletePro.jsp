<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script type="text/javascript" src="common.js"></script>
<%@ include file="./common.jsp" %>
<%
	String pw = request.getParameter("inputPw");
	
	if(pw.equals(dao.getPw(log))){
		dao.removeList(log);
		dao.setLog(-1);
		%>
		<script>msgUrl('탈퇴 완료되었습니다.', 'main.jsp')</script>
		<%
	}else{
		%>
		<script>msgUrl('비밀번호가 잘못되었습니다.', 'deleteForm.jsp')</script>
		<%
	}
%>