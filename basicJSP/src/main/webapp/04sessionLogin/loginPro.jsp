<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%

  boolean pass = false;
  String msg ="";
    %>
    
 <script>
function printMsg( url ,msg) {
	alert(msg);
	location.href=url;
}
</script>

<%
	String id = request.getParameter("inputId");
	String pw = request.getParameter("inputPw");
	ArrayList user = (ArrayList)session.getAttribute("user");
	pass = user.get(0).equals(id) && user.get(1).equals(pw);
%>
<%if(pass){%>
<script>
printMsg('index.jsp', "로그인 성공");
</script>
<%}else{%>
<script>
printMsg('index.jsp', "로그인 실패");
</script>
<%}%>