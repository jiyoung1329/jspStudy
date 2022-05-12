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
		
		// 로그인 성공
		if (checkId.equals(id) && checkPw.equals(pw)){
			if (check != null){
				Cookie c = new Cookie("saveId", "saveId");
				c.setMaxAge(60);
				response.addCookie(c);
				request.setAttribute("rememberId", "admin");
				
			// 아이디 기억하기 체크가 안되어있으면
			} else {
				// 쿠키 제거
				Cookie[] cookies = request.getCookies();
				for (Cookie c : cookies){
					if (c.getName().equals("saveId")){
						c.setMaxAge(0);
						response.addCookie(c);
						
					}
				}
			}
		
		}
		response.sendRedirect("ex4_login.jsp");
	%>
</body>
</html>