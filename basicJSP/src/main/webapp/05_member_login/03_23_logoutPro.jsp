<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script type="text/javascript" src="common.js"></script>
<%
	session.setAttribute("log", -1);
%>
<script>
	msgUrl('로그아웃 성공',"02_main.jsp");
</script>