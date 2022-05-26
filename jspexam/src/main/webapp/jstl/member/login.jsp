<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
<script src="check.js"></script>
</head>
<body>
	<c:import url="/jstl/default/header.jsp" />
	<div align="center">
		<h1>로그인</h1>
		<table>
		<tr><td>
			<form action="loginService.jsp" id="f">
				<input type="text" name="id" placeholder="아이디" id="id"> <br>
				<input type="password" name="pwd1" placeholder="비밀번호" id="pwd1"><br>
				<input type="button" value="로그인" onclick="loginCheck()"><br>
			</form>
		</td></tr>
		</table>
	</div>
	<c:import url="/jstl/default/footer.jsp" />
</body>
</html>