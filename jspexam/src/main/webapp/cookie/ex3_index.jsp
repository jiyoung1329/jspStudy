<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	인덱스 페이지 입니다.
	<%
		Cookie[] cookies = request.getCookies();
		if (cookies != null) {
			for (Cookie c : cookies){
				if (c.getName().equals("popup")){
					return;
				}
			
			%> 
			<script>
				window.open("ex3_popup.jsp", "팝업창", "width=400, height=300, top=0, right=300")
			</script>
			<%
			}
		}
			
			
	%>
	
</body>
</html>