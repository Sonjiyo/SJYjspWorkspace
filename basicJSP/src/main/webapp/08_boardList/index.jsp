<%@page import="Board.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	if(session.getAttribute("Bdao")==null){
		session.setAttribute("Bdao", new BoardDAO());
	}
	response.sendRedirect("_00_main.jsp");
%>