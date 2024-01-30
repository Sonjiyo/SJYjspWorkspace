<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	String msg = "";
	try{
		if(request.getParameter("num1")=="" || request.getParameter("num2")==""){
			throw new Exception();
		}
		
		int number1 = Integer.parseInt(request.getParameter("num1"));
		int number2 = Integer.parseInt(request.getParameter("num2"));
		
		msg = number1==number2 ? "두 값은 서로 같습니다." : 
							(number1<number2 ? number2 : number1) + "가 더 큰 숫자입니다.";
	}catch(NumberFormatException e){
		msg = "숫자가 아닌 값이 있습니다.";
	}catch(Exception e){
		msg = "비어있는 값이 있습니다.";
	}
%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1><%= msg %></h1>
</body>
</html>