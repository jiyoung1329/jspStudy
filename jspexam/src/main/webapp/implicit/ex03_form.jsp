<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="ex03_result.jsp" method=post>
		이름 : <input type="text" name="id"><br>
		주소 : <input type="text" name="address"><br>
		좋아하는 항목을 체크하세요 <br>
		<input type="checkbox" name="like" value="sleep"> 꿀잠 <br><br>
		<input type="checkbox" name="like" value="spaceout"> 멍때리기 <br><br>
		<input type="checkbox" name="like" value="home"> 집 <br><br>
		
		<input type="submit" value="완료"><br>
	</form>
</body>
</html>