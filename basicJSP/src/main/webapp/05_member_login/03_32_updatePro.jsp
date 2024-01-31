<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script type="text/javascript" src="common.js"></script>
<%
	int log = (int)session.getAttribute("log");
	String pw = ((ArrayList<String>)session.getAttribute("pwList")).get(log);

	ArrayList<String> nameList = (ArrayList)session.getAttribute("nameList");
	ArrayList<String> genderList = (ArrayList)session.getAttribute("genderList");
	
	String inputPw = request.getParameter("inputPw");
	
	if(pw.equals(inputPw)){
		nameList.set(log, request.getParameter("inputName"));
		genderList.set(log, request.getParameter("gender"));
		
		session.setAttribute("nameList", nameList);
		session.setAttribute("genderList", genderList);
	%>
		<script type="text/javascript">msgUrl("수정완료 되었습니다", "02_main.jsp")</script>
	<%}else{%>
		<script type="text/javascript">msgUrl("비밀번호가 일치하지 않습니다", "03_31_updateForm.jsp")</script>
	<%}
%>