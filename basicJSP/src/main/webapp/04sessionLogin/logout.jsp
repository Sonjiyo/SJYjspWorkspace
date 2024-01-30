<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	session.removeAttribute("name");
	session.removeAttribute("user");
%>
<script>
	alert("로그아웃 성공");
	location.href="index.jsp";
</script>