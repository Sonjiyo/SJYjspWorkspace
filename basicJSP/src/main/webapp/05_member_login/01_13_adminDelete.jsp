<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script type="text/javascript" src="common.js"></script>
<%
	int idx = Integer.parseInt((String)request.getParameter("idx"));
	ArrayList<String> idList = (ArrayList)session.getAttribute("idList");
	ArrayList<String> pwList = (ArrayList)session.getAttribute("pwList");
	ArrayList<String> nameList = (ArrayList)session.getAttribute("nameList");
	ArrayList<String> genderList = (ArrayList)session.getAttribute("genderList");
	
	String name = nameList.get(idx);
	
	
	idList.remove(idx);
	pwList.remove(idx);
	nameList.remove(idx);
	genderList.remove(idx);
		
	session.setAttribute("idList", idList);
	session.setAttribute("pwList", pwList);
	session.setAttribute("nameList", nameList);
	session.setAttribute("genderList", genderList);
%>
<script>
	msgUrl("<%=name%>회원 삭제 완료", "01_11_adminMain.jsp")
</script>