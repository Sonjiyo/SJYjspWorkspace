<%@page import="member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%
	if(session.getAttribute("Mdao")==null){
		session.setAttribute("Mdao", new MemberDAO());
	}
	if(session.getAttribute("log")== null){
		session.setAttribute("log", -1);
	}
	
	response.sendRedirect("main.jsp");
%>