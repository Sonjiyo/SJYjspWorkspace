<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./header.jsp" %>
<h1>메인 페이지</h1>
<%if(log!=-1){ %>
	<h1><%= dao.getName(log)%>님 환영합니다.</h1>
<%} %>
<%@ include file="./footer.jsp" %>