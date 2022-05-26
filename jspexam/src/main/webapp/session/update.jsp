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
input[type="text"], input[type="password"]{
	width: 18%;
}
</style>
</head>
<body>
<script>
function check(){
	id = document.getElementById('id');
	pw = document.getElementById('pw');
	confirmPw = document.getElementById('confirmPw');
		if(id.value == "" || pw.value == "" || document.getElementById('name').value == ""){
		alert('필수 항목입니다.');
		return;
	}
	if(pw.value != confirmPw.value){
		alert('두 비밀번호가 일치하지 않습니다.');
		return;
	} 
	document.getElementById('f').submit();
}

function update(click_id){
	click_id *= 1;
	click_id += 1;
	var rows = document.getElementsByTagName('tr')[click_id];
	var cells = rows.getElementsByTagName("td");
	
	id = cells[0].innerHTML;
	pw = cells[1].innerHTML;
	name = cells[2].innerHTML;
	email = cells[3].innerHTML;
	
	inputId = document.getElementsByName("id")[0];
	inputPw = document.getElementsByName("pw")[0];
	inputName = document.getElementsByName("name")[0];
	inputEmail = document.getElementsByName("email")[0];
	
	inputId.value = id;
	inputPw.value = pw;
	inputName.value = name;
	inputEmail.value = email;
}
</script>

<h1>회원 수정</h1>
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
			<td><input type="button" id="<%=i %>" onclick="update(this.id);" value="수정"></td>
		</tr>
		
		
		<%
		}
		%>
		
		
	</table>
	<hr>
	<form action="updateService.jsp" method="post" id="f">
		<input type="text" name="id" id="id" placeholder="아이디" readonly="readonly">
		<input type="password" name="pw" id="pw" placeholder="비밀번호">
		<input type="password" name="confirmPw" id="confirmPw" placeholder="비밀번호 확인">
		<input type="text" name="name" id="name" placeholder="이름">
		<input type="text" name="email" id="email" placeholder="이메일"><br><br>
		<input type="button" value="회원 수정" onclick="check();">
		<input type="button" value="취소" onclick="location.href='index.jsp'">
	</form>
</body>
</html>