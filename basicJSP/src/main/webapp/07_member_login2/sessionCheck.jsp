<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	if(session.getAttribute("log")== null){
  		response.sendRedirect("index.jsp");
	}

	if(session.getAttribute("Mdao")==null){
		response.sendRedirect("index.jsp");
	}
%>