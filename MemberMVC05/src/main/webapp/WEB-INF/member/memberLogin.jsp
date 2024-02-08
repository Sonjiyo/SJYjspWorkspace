<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file= "../../header.jsp" %>
<h1 class="py-3"> 로그인 </h1>

<c:if test="${loginFail ne null}">
	<script>alert('로그인 실패');</script>
</c:if>

<form action="${ctx}/memberLogin.do" method="post">
<table class="table table-bordered">
  <tr>
    <td>아이디</td>
    <td><input class="col-12" type="text" name="id"/></td>
  </tr>
  <tr>
    <td>패스워드</td>
    <td><input class="col-12" type="password" name="pw"/></td>
  </tr>
  <tr>
    <td colspan="2" align="center">
      <input type="submit" value="로그인" class="col-3 btn btn-primary"/>
    </td>
  </tr>
</table>
</body>
</html>