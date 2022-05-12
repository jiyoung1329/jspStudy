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
		String checkId = "admin";
		String checkPw = "1234";
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String check = request.getParameter("check");
		
		session = request.getSession();

		// 로그인 성공
		if (checkId.equals(id) && checkPw.equals(pw)){
			if (check != null){
				session.setAttribute("saveId", "save");
				
			// 아이디 기억하기 체크가 안되어있으면
			} else {
				// 세션 제거
				session.removeAttribute("saveId");
			}
		
		}
		response.sendRedirect("ex2_login.jsp");
	%>
</body>
</html>