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
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		System.out.println(id + " " + pw);
		if (id == null){
			id = (String) session.getAttribute("id");
		} else {
			if (id.equals("admin") && pw.equals("1234")){
				session = request.getSession();
				session.setAttribute("id", id);
			} else {
				response.sendRedirect("ex3_login.jsp");
			}
		}
	%>
			
	<%=id %> 님 안녕하세요! <br>
	저희 홈페이지에 방문해 주셔서 감사합니다.<br>
	즐거운 시간 되세요~<br>
	<form action="ex3_login.jsp" method="post">
		<input type="submit" name="logout" value="로그아웃">
		<input type="button" value="로그인페이지" onclick="location.href='ex3_login.jsp';">
	</form>
	
	
</body>
</html>