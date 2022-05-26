<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>list</title>
</head>
<body>
	<jsp:useBean id="memberDao" class="jstl_quiz.MemberDAO" />
	<c:set var="members" value="${memberDao.selectAll()}" />
	
	<table border="1">
		<tr>
			<th>아이디 </th>
			<th>비밀번호 </th>
			<th>이름 </th>
			<th>이메일 </th>
		</tr>
		<c:forEach var="member" items="${members }">
			<tr>
				<td>${member.getId() }</td>
				<td>${member.getPw() }</td>
				<td>${member.getName() }</td>
				<td>${member.getEmail() }</td>
			</tr>
			
		</c:forEach>
	</table>
	total record : ${members.size() }<br><br>
	<a href="index.jsp" style="text-decoration: none">인덱스 페이지로 이동</a>
</body>
</html>



