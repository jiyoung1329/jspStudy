function pw_check(){
	pw = document.getElementById("pw");
	confirm_pw = document.getElementById("confirm_pw");
	check_text = document.getElementById("check_text");
	
	if (confirm_pw.value != "" && pw.value != ""){
		check_text.style.fontSize = "8px";

		if (confirm_pw.value != pw.value) {
			check_text.innerText = "패스워드와 패스워드 확인이 일치하지 않습니다."
			check_text.style.color = "red";
			
		} else {
			check_text.innerText = "패스워드와 패스워드 확인이 일치합니다."
			check_text.style.color = "green";
		}
	}
}

function member_check(){
	id = document.getElementById("id");
	pw = document.getElementById("pw");
	confirm_pw = document.getElementById("confirm_pw");
	
	if (id.value == ""){
		alert("아이디를 입력해주세요.")
		id.focus();
	} else if (pw.value == ""){
		alert("패스워드를 입력해주세요.")
		pw.focus();
	} else if (confirm_pw.value == "") {
		alert("패스워드 확인을 입력해주세요.")
		confirm_pw.focus();
	} else if (pw.value != confirm_pw.value){
		alert("패스워드를 확인해주세요.")
		pw.value = "";
		confirm_pw.value = "";
		pw.focus();
		
	}
	
}

function login_check(){
	id = document.getElementById("id");
	pw = document.getElementById("pw");
	
	if (id.value == ""){
		alert("아이디를 입력해주세요.")
		id.focus();
	} else if (pw.value == ""){
		alert("패스워드를 입력해주세요.")
		pw.focus();
	}
}