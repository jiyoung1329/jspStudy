<%@page import="session_concept.MemberDTO"%>
<%@page import="session_concept.MemberDAO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
table {
	width: 100%;
	border: 1px solid #000000;
	border-collapse: collapse;
}
td, th{
	width: 19%;
	border: 1px solid #000000;
	text-align: center;
}
input[type="text"]{
	width: 18%;
	height: 100%;
	border: none;
	text-align: center;
}
input[type="text"]:focus {
	outline: none;
	
}
</style>
</head>
<body>
<script>
function deleteMember(click_id){
	click_id *= 1;
	click_id += 1;
	var rows = document.getElementsByTagName('tr')[click_id];
	var cells = rows.getElementsByTagName("td");
	
	var form = document.createElement("form");
	form.setAttribute('method', 'post');
	form.setAttribute('action', 'deleteService.jsp');
	document.charset = "utf-8";
	
	var keys = ['id', 'pw', 'name', 'email']
	for (var i=0; i<4; i++){
		var field = document.createElement('input');
		field.setAttribute('type', 'hidden');
		field.setAttribute("name", keys[i]);
		field.setAttribute("value", cells[i].innerHTML);
		form.appendChild(field);
	}
	console.log(form)
	document.body.appendChild(form);
	form.submit();
	
	
	
}
</script>

<h1>회원 삭제</h1>
	<%-- 아이디, 비밀번호, 이름, 이메일 --%>
	<%
		session = request.getSession();
		String login = (String) session.getAttribute("login");
		if (login == null){
			out.print("<script>alert('로그인 이후 이용할 수 있습니다.'); location.href='login.jsp';</script>");
			return;
		}
		MemberDAO memberDAO = new MemberDAO();
		ArrayList<MemberDTO> members = memberDAO.selectAll();
		
	%>
	
	<table>
		<tr>
			<th>아이디</th>
			<th>비밀번호</th>
			<th>이름</th>
			<th>이메일</th>
			<th>정보 수정</th>
		</tr>
		<%
		for (int i=0; i<members.size(); i++){
			MemberDTO member = members.get(i);	
			String id = member.getId();
			String pw = member.getPw();
			String name = member.getName();
			String email = member.getEmail();
		
		%>
		<tr>
			<td class="info"><%=id %></td>
			<td class="info"><%=pw %></td>
			<td class="info"><%=name %></td>
			<td class="info"><%=email %></td>
			<td><input type="button" id="<%=i %>" onclick="deleteMember(this.id);" value="삭제"></td>
		</tr>
		
		
		<%
		}
		%>
	</table>
</body>
</html>