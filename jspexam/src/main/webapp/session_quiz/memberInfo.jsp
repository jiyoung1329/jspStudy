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
table {
	width: 100%;
	border: 1px solid #000000;
	border-collapse: collapse;
}
td, th{
	border: 1px solid #000000;
	text-align: center;
}
h1 {text-align: center;}
</style>
</head>
<script>
function userInfo(obj){
	var id = obj.innerText;
	location.href = 'userInfo.jsp?id=' + id; 
}
</script>
<body>
	<%@ include file="/session_quiz/header.jsp" %>
	<h1>회원 목록</h1>
	<%-- 아이디, 비밀번호, 이름, 이메일 --%>
	<%
		MemberDAO memberDAO = new MemberDAO();
		ArrayList<MemberDTO> members = memberDAO.selectAll();
		
	%>
	
	<table>
		<tr>
			<th>아이디</th>
			<th>이름</th>
			<th>전화번호</th>
		</tr>
		<%
		for (MemberDTO member : members){
			
			String id = member.getId();
			String pw = member.getPwd1();
			String name = member.getName();
			String addr = member.getAddr();
			String tel = member.getTel();
		
		%>
		<tr>
			<td onclick="userInfo(this);"><%=id %></td>
			<td><%=name %></td>
			<td><%=tel %></td>
		</tr>
		
		
		<%
		}
		%>
	</table>
	<%@ include file="/session_quiz/footer.jsp" %>
	
</body>
</html>