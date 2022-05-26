<%@page import="session_quiz.MemberDTO"%>
<%@page import="session_quiz.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>register</title>
<script src="check.js"></script>
</head>
<body>
<%
	String id = request.getParameter("id");
	MemberDAO memberDAO = new MemberDAO();
	MemberDTO member = memberDAO.selectId(id);
	String pw = member.getPwd1();
	String name = member.getName();
	String addr = member.getAddr();
	String tel = member.getTel();
%>
	<%@ include file="/session_quiz/header.jsp" %>
	
	<div align="center">
		<h1>회원 수정</h1>
		<table>
		<tr>
		<td>
			<form action="updateService.jsp" method="post" id="f">
				<input type="text" name="id" placeholder="아이디" id="id" value="<%=id %>" readonly="readonly"> (*필수 항목) <br>
				<input type="password" name="pwd1" placeholder="비밀번호" id="pwd1"  value="<%=pw %>"><br>
				<input type="password" name="pwd2" placeholder="비밀번호 확인 " id="pwd2" onchange="pwCheck()">
				<label id="label">(*필수 체크)</label><br>
				
				<input type="text" name="name" id="name" placeholder="이름"  value="<%=name %>"><br>
				<input type="text" name="addr" placeholder="주소"  value="<%=addr %>"><br>
				<input type="text" name="tel" placeholder="전화번호"  value="<%=tel %>"><br>
				
				<input type="button" value="회원수정" onclick="allCheck()"><br>
			</form>
		</td></tr>
		</table>
	</div>
	<%@ include file="/session_quiz/footer.jsp" %>
</body>
</html>