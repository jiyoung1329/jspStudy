<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
</head>
<body>
<%-- <%
	String id = (String)session.getAttribute("id");
	if(id == null){
--%>
<c:choose>
<c:when test="${empty sessionScope.id }" >

	<form action="ex7_loginService.jsp" method="post">
		<input type="text" placeholder="아이디" name="id"> <br>
		<input type="password" placeholder="비밀번호" name="pw" ><br> 
		<input type="submit" value="로그인" >
	</form>
</c:when>
<c:otherwise>
	${sessionScope.id } 님 로그인 상태입니다. <br>
	<input type="button" value="인덱스 이동" onclick="location.href='index.jsp'" >
</c:otherwise>
</c:choose>
</body>
</html>