<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex01</title>
</head>
<body>
	<%-- request 요청 객체 메소드 --%>
	컨텍스트 패스 : <%=request.getContextPath() %> <br>
	요청 방식 : <%=request.getMethod() %> <br>
	요청 URL : <%=request.getRequestURL() %> <br>
	요청 URI : <%=request.getRequestURI() %> <br>
	서버의 이름 : <%=request.getServerName() %> <br>
	프로토콜 : <%=request.getProtocol() %> <br>
</body>
</html>