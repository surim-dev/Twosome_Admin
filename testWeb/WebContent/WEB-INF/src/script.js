function inputCheck(){
	if(document.regForm.mem_id.value==" "){
		alert("���̵� �Է����ּ���.");
		document.regFrom.mem_id.focus();
		return;
	}
	if(document.regForm.mem_passwd.value==" "){
		alert("��й�ȣ�� �Է����ּ���.");
		document.regForm.mem_passwd.focus();
		return;
	}
	if(document.regForm.mem_name.value==" "){
	 alert("�̸��� �Է����ּ���.");
	 document.regForm.mem_name.focus();
	 return;
	}
	if(document.regForm.mem_email.value==" "){
	 alert("�̸����� �Է����ּ���.");
	 document.regForm.mem_email.focus();
	 return;
	}
	
	document.regForm.submit();

}

function win_close(){
	self.close();
}