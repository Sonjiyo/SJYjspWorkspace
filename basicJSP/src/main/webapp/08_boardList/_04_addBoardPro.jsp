<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./common.jsp" %>
<script type="text/javascript" src="common.js"></script>
<%
	String user = request.getParameter("user");
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	
	dao.addBoardList(user, title, content);
%>
<script>
	msgUrl('추가되었습니다.', '_00_main.jsp');
</script>