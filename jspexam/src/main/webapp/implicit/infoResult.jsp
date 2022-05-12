<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% request.setCharacterEncoding("utf-8"); %>

입력한 정보는 아래와 같습니다. <br><br>
ID : <%=request.getParameter("id") %><br><br>
PW : <%=request.getParameter("pw") %><br><br>
자기소개 : <br>
<pre><%=request.getParameter("intro") %></pre><br><br>

</body>
</html>