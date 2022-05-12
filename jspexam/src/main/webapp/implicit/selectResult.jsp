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
		String edu = request.getParameter("edu");
		String[] nations = request.getParameterValues("nation");
		String[] interests = request.getParameterValues("interest");
		
	%>
	
	입력하신 정보는 아래와 같습니다. <br><br>
	
	학력 : <%=edu %> <br>
	소속 국가 : 
	<% 
		for (String nation: nations) out.print(nation + " ");
	%> <br>
	
	관심 분야 : 
	<% 
		for (String interest: interests) out.print(interest + " ");
	%> <br>

			

</body>
</html>