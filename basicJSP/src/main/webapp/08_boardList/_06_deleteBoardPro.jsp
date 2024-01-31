<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./common.jsp" %>
<script type="text/javascript" src="common.js"></script>
<%
	int idx = Integer.parseInt(request.getParameter("idx"));
	
	dao.removeBoardList(idx);
%>
<script>msgUrl('삭제 완료되었습니다.', '_00_main.jsp')</script>