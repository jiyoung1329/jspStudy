<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>설문조사 폼 만들기</h1>
	<form action=researchResult.jsp method=post>
		이름 : <input type="text" name="username"> <br><br>
		소개 : <textarea rows="5" name="intro" style="resize: none;"></textarea> <br>
		
		<fieldset>
			<legend>연령 조사</legend>
			10대 <input type="radio" name="age" value="10대">
			20대 <input type="radio" name="age" value="20대">
			30대 <input type="radio" name="age" value="30대">
			40대 <input type="radio" name="age" value="40대">
		</fieldset>
		
		<fieldset>
			<legend>취미 조사</legend>
			책읽기 <input type="checkbox" name="hobby" value="책읽기">
			코딩 <input type="checkbox" name="hobby" value="코딩">
			춤추기 <input type="checkbox" name="hobby" value="춤추기">
			멍때리기 <input type="checkbox" name="hobby" value="멍때리기">
		</fieldset>
		<br>
		<input type="submit" value="제출">
		<input type="reset" value="초기화">
	</form>
</body>
</html>