<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>css quiz10</title>
<style>
body{margin: 0;}
#background{
	background-color: #ebe6e4;
	padding: 20px 50px 50px 50px;
	width: 70%;
	height: 100%;
	margin: auto;
}
table{width: 100%; margin-bottom: 30px;}
.label{
	background-color: #9e857a;
	color: #ffffff;
	text-align: center;
	padding: 15px 0;
}
.content{
	padding-left: 10px;
}
textarea{resize: none;}
textarea[name="qna"]{width: 100%; height: 100%;}
textarea[name="agreeContent"]{width: 100%; padding: 10px;}
input[type="text"]{width: 100px;}
input[name="agreeCheck"]{margin: 20px 0;}
input[type="submit"]{padding: 10px 20px;}
</style>
</head>
<body>
	<div id="background">
		<!-- 제목 -->
		<header>
			<h1>빠른 상담 예약</h1>
			<p>직접 방문하시면 효과적인 공부 방법을 체계적으로 상담해 드립니다.</p>
		</header>
		
		<form action="#" method="get">
			<!-- 예약 정보 -->
			<table>
				<tr>
					<td class="label">상담일시</td>
					<td class="content">
						<input type="text" name="time" id="time" disabled>
						<select name="time" onchange="selectBoxChange(this.value);">
							<option value=''>선택해 주세요</option>
							<option value='09:00 ~ 10:00'>09:00 ~ 10:00</option>
							<option value='10:00 ~ 11:00'>10:00 ~ 11:00</option>
							<option value='11:00 ~ 12:00'>11:00 ~ 12:00</option>
							<option value='13:00 ~ 14:00'>13:00 ~ 14:00</option>
							<option value='14:00 ~ 15:00'>14:00 ~ 15:00</option>
							<option value='15:00 ~ 16:00'>15:00 ~ 16:00</option>
							<option value='16:00 ~ 17:00'>16:00 ~ 17:00</option>
							<option value='17:00 ~ 18:00'>17:00 ~ 18:00</option>
						</select>
					</td>
				</tr>
				<tr>
					<td class="label">이름</td>
					<td class="content">
						<input type="text" name="name">
					</td>
				</tr>
				<tr>
					<td class="label">성별</td>
					<td class="content">
						<input type="radio" name=gender value="m" checked="checked"> 남
						<input type="radio" name=gender value="w"> 여
					</td>
				</tr>
				<tr>
					<td class="label">연락처</td>
					<td class="content">
						<select name="mobile1">
							<option value='010'>010</option>
							<option value='011'>011</option>
							<option value='019'>019</option>
							<option value='017'>017</option>
						</select>
						-
						<input type="text" name="mobile2">
						-
						<input type="text" name="mobile3">
					</td>
				</tr>
				<tr>
					<td class="label">이메일</td>
					<td class="content">
						<input type="text" name="email1">
						@ 
						<input type="text" name="email2"> 
					</td>
				</tr>
				<tr>
					<td class="label">궁금한 점</td>
					<td class="content">
						<textarea name="qna"></textarea>
					</td>
				</tr>
			</table>
		
			<!-- 개인정보 수집 동의 -->
			<textarea  rows="10" name="agreeContent">[필수] 개인정보 수집항목 동의

(주)케이지에듀원은 개인정보 관련 법률 (개인정보보호법, 정보통신망 이용촉진 및 정보보호에 관한 법률)을 준수하며 수집된 개인 정보는 해당 서비스 외에 다른 용도로 절대 사용하지 않으며, 사용자 요청 시 바로 삭제할 수 있습니다.

1. 수집항목 및 이용목적
	수집항목 : 이름, 연락처, 이메일, 전화번호
	이용목적 : 이벤트 내용 안내 및 혜택 지급
			
2. 개인정보를 제공받는 자 : (주)케이지에듀원
			
3. 보유 및 이용 기간: 상담예약 후 1개월
			
귀하는 개인정보 제공에 동의하지 않으실 권리가 있습니다.
단, 개인정보 제공에 동의하지 않을 경우 상담 이용에 제한이 있을 수 있습니다.
그 밖의 사항은 개인정보취급방침을 준수합니다.	
			</textarea>
			
			<div>
				<input type="checkbox" name="agreeCheck"> 개인정보 수집 동의
			</div>
			<input type="submit" value="문의하기">
		</form>
	
	</div>
		
</body>

<script>
function selectBoxChange(value){
	const timeInput = document.getElementById('time');
	if (value != ''){
		timeInput.value = value;
	}
	console.log(value);
}
</script>
</html>