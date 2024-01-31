<%@page import="member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	MemberDAO dao = (MemberDAO)session.getAttribute("Mdao");
	int log = dao.getLog();
%>