<%@page import="session_quiz.MemberDAO"%>
<%@page import="session_quiz.MemberDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>list</title>
<style>
h1, p {
	text-align: center;
}
</style>
</head>
<script>
function update(id){
	console.log(id)
	location.href = 'update.jsp?id=' + id; 
}
</script>
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
	<h1><%=id %>회원님의 정보</h1>
	<p>아이디 : <%=id %></p>
	<p>비밀번호 : <%=pw %></p>
	<p>이름 : <%=name %></p>
	<p>주소 : <%=addr %></p>
	<p>전화번호 : <%=tel %></p>
	<div align="center"> 
		<button onclick="update(<%=id%>)">회원 수정</button>
		<button>회원 삭제</button>
		
	</div>
	
	<%@ include file="/session_quiz/footer.jsp" %>
	
</body>
</html>