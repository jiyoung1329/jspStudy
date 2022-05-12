function idCheck(elm){
	const idExp = /^[a-z0-9_-]{5,20}$/;
	const idInfo = '5~20자의 영문 소문자, 숫자와 특수기호(_),(-)만 사용 가능합니다.';

	var info = document.getElementById("idInfo");
	if (!idExp.test(elm.value)){
		info.innerText = idInfo;
	} else {
		info.innerText = "";
	}
}

function pwCheck(elm){
	const pwExp = /^[a-zA-Z0-9$@$!%*#?&-_]{8,16}$/;
	const pwInfo = '8~16자 영문 대 소문자, 숫자, 특수문자를 사용하세요.';

	var info = document.getElementById("pwInfo");
	if (pwExp.test(elm.value)){
		info.innerText = "";
	} else {
		info.innerText = pwInfo;
	}
	
}
function confirmPw(elm){
	const checkPwInfo = '비밀번호가 일치하지 않습니다.';

	var pw = document.getElementById("pw");
	var info = document.getElementById("checkPwInfo");

	if (pw.value != elm.value){
		info.innerText = checkPwInfo;
	} else {
		pw.innerText = "";
	}
}

function nameCheck(elm){
	const nameExp = /^[가-힣a-zA-Z]$/;
	const nameInfo = '한글과 영문 대 소문자를 사용하세요. (특수기호, 공백 사용 불가)';

	var info = document.getElementById("nameInfo");
	if (!nameExp.test(elm.value)){
		info.innerText = nameInfo;
	} else {
		info.innerText = "";
	}
}
function birthCheck(){
	const yearExp = /^[0-9]{4}$/;
	const yearInfo1 = '태어난 년도 4자리를 정확하게 입력하세요.';
	const yearInfo2 = '정말이세요?'; // 1922년 이전 생
	const yearInfo3 = '미래에서 오셨군요. ^^';
	const monthInfo = '태어난 월을 선택하세요.';
	const dayInfo = '생년월일을 다시 확인해주세요';

	var year = document.getElementById("birthYear").value;
	var month = document.getElementById("birthMonth").value;
	var day = document.getElementById("birthDay").value;
	
	var info = document.getElementById("birthInfo");

	// 년도 체크
	if (!yearExp.test(year)){
		info.innerText = yearInfo1;
		return;
	} else if (year < 1923){
		info.innerText = yearInfo2;
		return;
	} else if (year > 2022){
		info.innerText = yearInfo3;
		return;
	} else {
		info.innerText = "";
	}
	// 월 체크
	if (month == "월"){
		info.innerText = monthInfo;
		return;
	} else {
		info.innerText = "";
	}
	// 일 체크
	month = Number(month);
	day = Number(day);
	days = [0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
	if (day <= days[month]){
		info.innerText = "";
	} else {
		info.innerText = dayInfo;
	}
	
}

function genderCheck(elm){
	const genderInfo = '필수 정보입니다.';
	var info = document.getElementById("genderInfo");
	if (elm.value == "남자" || elm.value == "여자"){
		info.innerText = "";
	} else {
		info.innerText = genderInfo;
	}
}
function emailCheck(elm){
	const emailExp = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
	const emailInfo = '이메일 주소를 다시 확인해주세요.';
	
	var info = document.getElementById("emailInfo");
	if (!emailExp.test(elm.value)){
		info.innerText = emailInfo;
	} else {
		info.innerText = "";
	}
}
function mobileCheck(elm){
	const mobileExp = /^\d{3}-\d{3,4}-\d{4}$/;
	const mobileInfo = '전화번호를 다시 확인해주세요.';
	
	var info = document.getElementById("mobileInfo");
	if (!mobileExp.test(elm.value)){
		info.innerText = mobileInfo;
	} else {
		info.innerText = "";
	}
}
