<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script type="text/javascript" src="common.js"></script>
<%@ include file="./common.jsp" %>
<%
	int idx = Integer.parseInt(request.getParameter("idx"));
	String name = dao.getName(idx);
	dao.removeList(idx);
%>
<script>
	msgUrl("<%=name%>회원 삭제 완료", "main.jsp");
</script>