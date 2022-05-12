<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="selectResult.jsp" method=post>
		학력 : 
		<select name="edu">
			<option value="재학생">재학생</option>
			<option value="졸업생">졸업생</option>
			<option value="대학원생">대학원생</option>
		</select>
		
		<br><br>
		
		소속국가 : 
		<select multiple name="nation">
			<option value="대한민국">대한민국</option>
			<option value="미국">미국</option>
			<option value="일본">일본</option>
		</select>
		
		<br><br>
		
		관심분야 : 
		<select multiple name="interest">
			<option value="컨설팅">컨설팅</option>
			<option value="프로듀싱">프로듀싱</option>
			<option value="프로그래머">프로그래머</option>
			<option value="서버관리자">서버관리자</option>
		</select>
		
		<br><br>

		<input type="submit" value="전송">
		<input type="reset" value="초기화">
	</form>
</body>
</html>