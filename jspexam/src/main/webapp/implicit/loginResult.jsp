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
		request.setCharacterEncoding("utf-8");
		String id = "admin";
		String pw = "admin1234";
		
		String requestId = request.getParameter("id");
		String requestPw = request.getParameter("pw");
		
		// System.out.println(id + " " + pw + " " + requestId + " " + requestPw);
		// 아이디가 틀렸을때
		if (!requestId.equals(id)){
			response.sendRedirect("loginForm.jsp");
			
		// 아이디는 맞고 비밀번호가 틀렸을때
		} else if (!requestPw.equals(pw)){
			response.sendRedirect("loginFailed.jsp");
			
		// 아이디와 비밀번호 모두 맞을때
		} else {
			response.sendRedirect("loginIndex.jsp");
		}
		
	%>
</body>
</html>