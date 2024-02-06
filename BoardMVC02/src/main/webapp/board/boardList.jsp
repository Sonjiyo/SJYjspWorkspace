<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file= "header.jsp" %>
<p>전체 게시글 수 :${size }개</p>
<table border="1">
	<tr>
		<th>번호</th>
		<th>작성자</th>
		<th>작성일</th>
		<th>제목</th>
		<th>내용</th>
		<th>삭제</th>
	</tr>
	<c:forEach var="vo" items="${list}">
		<tr>
			<td>${vo.num }</td>
			<td>${vo.user }</td>
			<td>${vo.date }</td>
			<td><a href="${ctx }/boardContent.do?num=${vo.num }">${vo.title }</a></td>
			<td>${vo.content }</td>
			<td><button onclick="location.href='${ctx }/boardDelete.do?num=${vo.num }'">삭제하기</button></td>
		</tr>
	</c:forEach>
	<c:if test="${startPage>3}">
		<a href="${ctx}/boardList.do?page=${startPage-3}&start=${startPage-3}">[이전]</a>
	</c:if>
	<c:forEach var="i" begin="${startPage}" end="${endPage}">
		<a href="${ctx}/boardList.do?page=${i}&start=${startPage}">[${i}]</a>
	</c:forEach>
	<c:if test="${totalPage>endPage}">
		<a href="${ctx}/boardList.do?page=${startPage+3}&start=${startPage+3}">[이후]</a>
	</c:if>
</table>
</body>
</html>
</body>
</html>