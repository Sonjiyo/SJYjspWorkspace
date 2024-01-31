<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script type="text/javascript" src="common.js"></script>
<%
	int log = (int)session.getAttribute("log");
	ArrayList<String> idList = (ArrayList)session.getAttribute("idList");
	ArrayList<String> pwList = (ArrayList)session.getAttribute("pwList");
	ArrayList<String> nameList = (ArrayList)session.getAttribute("nameList");
	ArrayList<String> genderList = (ArrayList)session.getAttribute("genderList");
	
	String pw = pwList.get(log);
	
	String inputPw = request.getParameter("inputPw");
	if(pw.equals(inputPw)){
		idList.remove(log);
		pwList.remove(log);
		nameList.remove(log);
		genderList.remove(log);
		
		session.setAttribute("idList", idList);
		session.setAttribute("pwList", pwList);
		session.setAttribute("nameList", nameList);
		session.setAttribute("genderList", genderList);
		
		session.setAttribute("log", -1);
	%>
		<script type="text/javascript">msgUrl("삭제완료 되었습니다", "02_main.jsp")</script>
	<%}else{%>
		<script type="text/javascript">msgUrl("비밀번호가 일치하지 않습니다", "02_main.jsp")</script>
	<%}
%>