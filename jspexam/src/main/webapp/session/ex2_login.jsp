<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String rememberId = "";
		session = request.getSession();
		String saveId = (String) session.getAttribute("saveId");
		System.out.println(saveId);
		if (saveId != null) {
			rememberId = "admin";
		}
	%>
	<form action="ex2_loginCheck.jsp" method="post">
		<input type="text" placeholder="아이디" name="id" value="<%=rememberId %>"><br>
		<input type="password" placeholder="비밀번호" name="pw"><br>
		<input type="checkbox" name="check" value="t"> 아이디 기억하기 <br>
		
		<input type="submit" value="로그인">
		<input type="reset" value="취소">
	</form>
</body>
</html>