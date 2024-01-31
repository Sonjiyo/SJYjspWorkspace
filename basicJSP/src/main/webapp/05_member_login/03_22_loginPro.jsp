<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script type="text/javascript" src="common.js"></script>
<%
	ArrayList<String> idList = (ArrayList)session.getAttribute("idList");
	ArrayList<String> pwList = (ArrayList)session.getAttribute("pwList");
	
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");

	int log = -1;
	for(int i=0; i<idList.size(); i++){
		if(idList.get(i).equals(id) && pwList.get(i).equals(pw)){
			session.setAttribute("log", i);
			log = i;
		}
	}
	if(log==-1){%>
		<script>msgUrl('로그인 실패',"02_main.jsp");</script>
	<%}else{
		if(id.equals("admin")){%>
			<script>msgUrl('로그인 성공',"01_11_adminMain.jsp");</script>
		<%}else{%>
			<script>msgUrl('로그인 성공',"02_main.jsp");</script>
		<%}
	}
%>
