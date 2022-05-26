<%@page import="session_concept.MemberDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="session_concept.MemberDAO"%>
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
</style>
</head>

<body>
	<h1>회원 목록</h1>
	<%-- 아이디, 비밀번호, 이름, 이메일 --%>
	<%
		MemberDAO memberDAO = new MemberDAO();
		ArrayList<MemberDTO> members = memberDAO.selectAll();
		
	%>
	
	<table>
		<tr>
			<th>아이디</th>
			<th>비밀번호</th>
			<th>이름</th>
			<th>이메일</th>
		</tr>
		<%
		for (MemberDTO member : members){
			
			String id = member.getId();
			String pw = member.getPw();
			String name = member.getName();
			String email = member.getEmail();
		
		%>
		<tr>
			<td><%=id %></td>
			<td><%=pw %></td>
			<td><%=name %></td>
			<td><%=email %></td>
		</tr>
		
		
		<%
		}
		%>
	</table>
	
</body>
</html>