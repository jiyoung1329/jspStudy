<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz11 NAVER</title>
</head>
<style>
img{
	height: 100px; width: auto;
}
label{
	font-weight: bold;
	font-size: 20px;
	margin-bottom: 5px;
}
td{
	padding-bottom: 10px;
}
.inputCss{
	border: 1px solid #DADADA;
	margin-bottom: 10px;
	padding: 10px;
	background-color: #ffffff;
}
#idInput{
}
input{
	width: 400px;
	height: 30px;
	border: none;
		
}
.idUrl{
	font-size: 20px;
	color: #DADADA;
	position : absolute;
	right: 100px;
	
}
</style>
<body>
	<table>
		<tr id="header"><td><img src="naver.png"></td></tr>
		
		<tr><td><label for="id">아이디</label></td></tr>
		<tr><td><span class="inputCss" id="idInput">
			<input type="text" name="id">
			<span class="idUrl">@naver.com</span>
		</span></td></tr>

		<tr><td><label for="pw">비밀번호</label></td></tr>
		<tr><td><span class="inputCss">
			<input type="password" name="pw">
		</span></td></tr>
		
		<tr><td><label for="pwCheck">비밀번호 재확인</label></td></tr>
		<tr><td><span class="inputCss">
			<input type="password" name="pwCheck">
		</span></td></tr>
		
		<tr><td><label for="name">이름</label></td></tr>
		<tr><td><span class="inputCss">
			<input type="text" name="name">
		</span></td></tr>
		
		<tr><td><label>생년월일</label></td></tr>
		<tr><td>
			<input type="text" name="birthYear">
			<select name="birthMonth">
				<option value="월">월</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				<option value="4">4</option>
				<option value="5">5</option>
				<option value="6">6</option>
				<option value="7">7</option>
				<option value="8">8</option>
				<option value="9">9</option>
				<option value="10">10</option>
				<option value="11">11</option>
				<option value="12">12</option>
			</select>
			<input type="text" name="birthDay">
		</td></tr>
		
		<tr><td><label for="gender">성별</label></td></tr>
		<tr><td>
			<select name="gender">
				<option value="성별">성별</option>
				<option value="남자">남자</option>
				<option value="여자">여자</option>
				<option value="선택안함">선택안함</option>
			</select>
		</td></tr>
		
		<tr><td><label for="email">본인 확인 이메일</label></td></tr>
		<tr><td><span class="inputCss">
			<input type="text" name="email" placeholder="선택입력">
		</span></td></tr>
		
		<tr><td><label for="tel">휴대전화</label></td></tr>
		<tr><td>
			<select id="nationNo" name="nationNo">
				<option value="233">가나 +233</option>
				<option value="241">가봉 +241</option>
				<option value="592">가이아나 +592</option>
				<option value="220">감비아 +220</option>
				<option value="502">과테말라 +502</option>
				<option value="1671">괌 +1 671</option>
				<option value="1473">그레나다 +1 473</option>
				<option value="82" selected="">대한민국 +82</option>
			</select>
		</td></tr>
		
		<tr><td><span class="inputCss">
			<input type="text" name="tel">
		</span></td></tr>
		
		<tr><td><span class="inputCss">
			<input type="text" name="authTel" placeholder="인증번호 입력하세요" disabled="disabled">
		</span></td></tr>	
			
		
		<tr><td><button>가입하기</button></td></tr>
		
	</table>
</body>
</html>