<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./common.jsp" %>
<script type="text/javascript" src="common.js"></script>
<%
	dao.addBoardList();
%>
<script>msgUrl('추가 완료',"_00_main.jsp")</script>