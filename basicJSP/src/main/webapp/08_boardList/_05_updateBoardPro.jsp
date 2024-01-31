<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./common.jsp" %>
<script type="text/javascript" src="common.js"></script>
<%
	int idx = Integer.parseInt(request.getParameter("idx"));
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	
	dao.setContent(idx, content);
	dao.setTitle(idx, title);
%>
<script>
	msgUrl('수정완료되었습니다.','_00_main.jsp');
</script>