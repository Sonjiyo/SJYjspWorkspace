<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
 
 String name = request.getParameter("name");
 String id = request.getParameter("id");
 String pw = request.getParameter("pw");
 
 session.setAttribute("name", name);
 ArrayList list = new ArrayList();
 list.add(id);
 list.add(pw);
 session.setAttribute("user", list);
 //세션은 보통 30분을 디폴트로 서버안에 저장되어있음
 //session.setMaxInactiveInterval(5); 5초동안만 유지
 
 //response.sendRedirect("login.jsp"); //로그인 페이지로 이동
%>
<script>
alert("회원가입 완료");
location.href="login.jsp"
</script>