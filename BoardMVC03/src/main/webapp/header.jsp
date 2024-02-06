<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${ pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BoardListMVC03</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="${ctx}/css/style.css" />
</head>
<body class="d-flex flex-column align-items-center">
	<h1>게시판</h1>
	<div class="container">
		<a href="${ctx}/boardList.do">전체 게시글 확인하기</a>
		<a href="${ctx}/boardAddDummy.do">더미 게시글 추가하기</a>
		<a href="${ctx}/boardDeleteAll.do">전체 게시글 삭제하기</a>
		<a href="${ctx}/boardAdd.do">게시글 추가하기</a>
	</div>