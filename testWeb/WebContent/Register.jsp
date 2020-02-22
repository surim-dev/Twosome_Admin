<%@ page contentType= "text/html;charset=EUC-KR"%>

<html>
	<head>
		<title> 회원가입  페이지</title>
		<script language="javaScript" src="script.js"></script>		

<script>

/* 입력된 정보의 유효성 체크하는 함수 */	
	function inputCheck(){
	//alert(document.regForm.mem_id.value.length);
	
		if(document.regForm.admin_id.value==""){
			alert("아이디를 입력해주세요.");
			document.regFrom.admin_id.focus();
			return;
		}
	
		if(document.regForm.admin_passwd.value.length<8 || document.regForm.admin_passwd.value.length>12){
			alert("패스워드는 최소 8글자이상 16글자 이하로 입력해주세요.");
			document.regFrom.admin_id.focus();
			return;
		}	
	
		if(document.regForm.admin_passwd.value==""){
			alert("패스워드를 입력해주세요.");
			document.regForm.admin_passwd.focus();
			return;
		}
	
		if(document.regForm.admin_name.value==""){
			 alert("이름을 입력해주세요.");
			 document.regForm.admin_name.focus();
	 	return;
		}
	
		if(document.regForm.admin_email.value==""){
			 alert("이메일을 입력해주세요.");
			 document.regForm.admin_email.focus();
		return;
		}
	
		/* 함수 실행 완료 시 sumit 실행되어 RegisterProc.jsp 이동*/
	document.regForm.submit(); 
}



</script>
	
	</head>
		<!-- 회원가입시 개인정보를 입력하는 표 시작 -->
		<body bgcolor="white" topmargin="30" onLoad="regForm.admin_id.focus()">
			<form method="post" name="regForm" action="RegisterProc.jsp">
					<table width="50%" border="1" align="center">
						<tr bordercolor="white">
							<td colspan="2" align="center">관리자 회원가입</td>
						</tr>
						
						<tr>
							<td width="47" align="center">아이디</td>
							<td width="53" align="left"><input type="text" name="admin_id">
							<!-- <input type="button" value="중복확인" onClick="idCheck(this.form.admin_id.value)"></td> -->							
						</tr>
						<tr>
							<td width="47" align="center">패스워드</td>
							<td width="53" align="left"><input type="password" name="admin_passwd"></td>
						</tr>
						<tr>
							<td width="47" align="center">이름</td>
							<td width="53" align="left"><input type="text" name="admin_name"></td>
						</tr>
						<tr>
							<td width="47" align="center">이메일</td>
							<td width="53" align="left"><input type="text" name="admin_email"></td>
						</tr>
						<tr>
							<td colspan="2" align="center">
								<input type="button" value="회원가입" onClick="inputCheck()">									
								<input type="reset" value="초기화">
							</td>
						</tr>
					</table>
			</form>
		</body>
		<!-- 회원가입시 개인정보를 입력하는 표 끝 -->
</html>