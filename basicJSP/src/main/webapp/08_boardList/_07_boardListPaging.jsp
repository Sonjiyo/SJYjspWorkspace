<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./common.jsp" %>
<%
	int size = dao.getBoardListSize(); 
	int pageCut = 5;
	int nowPage = 1;
	if(request.getParameter("page")!=null){
		nowPage = Integer.parseInt(request.getParameter("page"));
	}
	int startContent = (nowPage-1)*pageCut;
	int endContent = startContent+pageCut;
	if(endContent>size){
		endContent = size;
	}
	int totalPage = size/pageCut;
	if(size%pageCut>0) totalPage+=1;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BoardList</title>
</head>
<body>
<p>전체 게시글 수 : <%=size%>개</p>
<table border="1">
	<tr>
		<th>번호</th>
		<th>작성자</th>
		<th>작성일</th>
		<th>제목</th>
		<th>내용</th>
		<th>삭제</th>
	</tr>
	<%
		for(int i =startContent; i<endContent; i++){%>
			<tr>
				<td><%=dao.getContentNum(i)%></td>
				<td><%=dao.getUser(i)%></td>
				<td><%=dao.getDate(i)%></td>
				<td><a href="_05_updateBoard.jsp?idx=<%=i%>"><%=dao.getTitle(i)%></a></td>
				<td><%=dao.getContent(i)%></td>
				<td><button onclick="location.href='_06_deleteBoardPro.jsp?idx=<%=i%>'">삭제하기</button></td>
			</tr>
		<%}
	%>
	<tr>
		<td colspan="6"><button onclick="location.href='_00_main.jsp'">메인화면</button></td>
	</tr>
</table>
<%	
	int startPage = 1;
	if(request.getParameter("start")!=null){
		startPage = Integer.parseInt(request.getParameter("start"));
	}
	int endPage = startPage+2;
	if(endPage>totalPage) endPage=totalPage;
	
	if(startPage>3){%>
	<a href="_07_boardListPaging.jsp?page=<%=startPage-3%>&start=<%=startPage-3%>">[이전]</a>
	<%}
	for(int i=startPage; i<=endPage; i++){%>
		<a href="_07_boardListPaging.jsp?page=<%=i%>&start=<%=startPage%>">[<%= i%>]</a>
	<%}
	if(totalPage>endPage){%>
		<a href="_07_boardListPaging.jsp?page=<%=startPage+3%>&start=<%=startPage+3%>">[이후]</a>
	<%}
%>
</body>
</html>