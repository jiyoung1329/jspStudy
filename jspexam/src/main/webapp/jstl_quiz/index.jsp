<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index</title>
<style>
	a { text-decoration: none; color : black;}
</style>
</head>
<body>
	<h2>인덱스 페이지</h2>
	<c:if test="${empty sessionScope.id }" >
		<a href="member.jsp">회원 가입 |</a>
		<a href="login.jsp">로그인 | </a>
	</c:if>
	<c:if test="${!empty sessionScope.id }" >
		<a href="list.jsp">회원 목록 |</a>
		<a href="update.jsp">회원 수정 |</a>
		<a href="delete.jsp">회원 삭제 |</a>
		<a href="logout.jsp">로그아웃 | </a>
	</c:if>
</body>
</html>