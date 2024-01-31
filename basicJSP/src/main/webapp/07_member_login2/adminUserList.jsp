<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./header.jsp" %>
<h1>관리자 페이지(회원 정보 확인하기)</h1>
<table border="1">
	<tr>
		<td>아이디</td>
		<td>패스워드</td>
		<td>이름</td>
		<td>성별</td>
		<td>삭제</td>
	</tr>
	<%for(int i=1; i<dao.getMemberSize(); i++){%>
		<tr>
			<td><%= dao.getId(i)%></td>
			<td><%= dao.getPw(i)%></td>
			<td><%= dao.getName(i)%></td>
			<td><%= dao.getGender(i)%></td>
			<td>
				<button onclick="location.href='adminDelete.jsp?idx=<%=i%>'">삭제</button>
			</td>
		</tr>
	<%}%>
</table>
<%@ include file="./footer.jsp" %>