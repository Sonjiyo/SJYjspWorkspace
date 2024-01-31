<%@page import="Board.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	if(session.getAttribute("Bdao")==null){
		response.sendRedirect("index.jsp");
	}

	BoardDAO dao = (BoardDAO)session.getAttribute("Bdao");
%>
