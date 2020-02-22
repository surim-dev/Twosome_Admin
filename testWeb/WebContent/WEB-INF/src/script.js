function inputCheck(){
	if(document.regForm.mem_id.value==" "){
		alert("아이디를 입력해주세요.");
		document.regFrom.mem_id.focus();
		return;
	}
	if(document.regForm.mem_passwd.value==" "){
		alert("비밀번호를 입력해주세요.");
		document.regForm.mem_passwd.focus();
		return;
	}
	if(document.regForm.mem_name.value==" "){
	 alert("이름을 입력해주세요.");
	 document.regForm.mem_name.focus();
	 return;
	}
	if(document.regForm.mem_email.value==" "){
	 alert("이메일을 입력해주세요.");
	 document.regForm.mem_email.focus();
	 return;
	}
	
	document.regForm.submit();

}

function win_close(){
	self.close();
}