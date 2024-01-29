<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		int num1 = 0;
		int num2 = 0;
		try{
			num1 = Integer.parseInt(request.getParameter("num1"));
			num2 = Integer.parseInt(request.getParameter("num2"));
			out.println("<h1>num1 = "+ num1 +"</h1>");
			out.println("<h1>num2 = "+ num2 +"</h1>");
			out.println("<h1>hap = "+ (num1+num2) +"</h1>");		
		}catch(Exception e){
			out.println("<h1>숫자가 아닌 값이 있어서 덧셈불가</h1>");
		}
		out.println("<h1>su1 = "+ request.getParameter("num1") +"</h1>");
		out.println("<h1>su2 = "+ request.getParameter("num2") +"</h1>");
	%>
</body>
</html>