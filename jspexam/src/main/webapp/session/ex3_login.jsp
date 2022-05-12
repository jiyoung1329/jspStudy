<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- 로그인 --%>
	<%
		// 로그아웃 했을때
		String logout = request.getParameter("logout");
		if (logout != null) {
			session.removeAttribute("id");
		}
		
		session = request.getSession();
		String id = (String) session.getAttribute("id");
		
	%>
	<h1>CARE LAB</h1>
	<h3>저희 사이트에 방문해 주셔서 감사합니다.</h3>
	
	<%
	if (id == null){
	%>	
	<form action="ex3_main.jsp" method="post">
		<input type="text" placeholder="아이디" name="id"><br><br>
		<input type="password" placeholder="비밀번호" name="pw"><br><br>
		
		<input type="submit" value="로그인">
	</form>
	
	<%
	} else {
	%>
	
	<%=id %>님 로그인 상태입니다.<br>
	<button onclick="location.href='ex3_main.jsp';">main으로 이동</button>
	<%
	}
	%>	
	
	<%-- 팝업 --%>
	<%
		Cookie[] cookies = request.getCookies();
		String popup = "";
		if (cookies != null) {
			for (Cookie c : cookies){
				if (c.getName().equals("popup")){
					popup = c.getName();
					break;
				}
			}
		}
	%>
	<% 
		if (popup.equals("")){
	%>
			<script>
				window.open("ex3_popup.jsp", "팝업창", "width=400, height=300, top=0, right=300")
			</script>
	
	<%
		} 
	%>
			
</body>
</html>