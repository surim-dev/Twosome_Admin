<%@ page contentType= "text/html;charset=EUC-KR"%>

<html>
	<head>
		<title> ȸ������  ������</title>
		<script language="javaScript" src="script.js"></script>		

<script>

/* �Էµ� ������ ��ȿ�� üũ�ϴ� �Լ� */	
	function inputCheck(){
	//alert(document.regForm.mem_id.value.length);
	
		if(document.regForm.admin_id.value==""){
			alert("���̵� �Է����ּ���.");
			document.regFrom.admin_id.focus();
			return;
		}
	
		if(document.regForm.admin_passwd.value.length<8 || document.regForm.admin_passwd.value.length>12){
			alert("�н������ �ּ� 8�����̻� 16���� ���Ϸ� �Է����ּ���.");
			document.regFrom.admin_id.focus();
			return;
		}	
	
		if(document.regForm.admin_passwd.value==""){
			alert("�н����带 �Է����ּ���.");
			document.regForm.admin_passwd.focus();
			return;
		}
	
		if(document.regForm.admin_name.value==""){
			 alert("�̸��� �Է����ּ���.");
			 document.regForm.admin_name.focus();
	 	return;
		}
	
		if(document.regForm.admin_email.value==""){
			 alert("�̸����� �Է����ּ���.");
			 document.regForm.admin_email.focus();
		return;
		}
	
		/* �Լ� ���� �Ϸ� �� sumit ����Ǿ� RegisterProc.jsp �̵�*/
	document.regForm.submit(); 
}



</script>
	
	</head>
		<!-- ȸ�����Խ� ���������� �Է��ϴ� ǥ ���� -->
		<body bgcolor="white" topmargin="30" onLoad="regForm.admin_id.focus()">
			<form method="post" name="regForm" action="RegisterProc.jsp">
					<table width="50%" border="1" align="center">
						<tr bordercolor="white">
							<td colspan="2" align="center">������ ȸ������</td>
						</tr>
						
						<tr>
							<td width="47" align="center">���̵�</td>
							<td width="53" align="left"><input type="text" name="admin_id">
							<!-- <input type="button" value="�ߺ�Ȯ��" onClick="idCheck(this.form.admin_id.value)"></td> -->							
						</tr>
						<tr>
							<td width="47" align="center">�н�����</td>
							<td width="53" align="left"><input type="password" name="admin_passwd"></td>
						</tr>
						<tr>
							<td width="47" align="center">�̸�</td>
							<td width="53" align="left"><input type="text" name="admin_name"></td>
						</tr>
						<tr>
							<td width="47" align="center">�̸���</td>
							<td width="53" align="left"><input type="text" name="admin_email"></td>
						</tr>
						<tr>
							<td colspan="2" align="center">
								<input type="button" value="ȸ������" onClick="inputCheck()">									
								<input type="reset" value="�ʱ�ȭ">
							</td>
						</tr>
					</table>
			</form>
		</body>
		<!-- ȸ�����Խ� ���������� �Է��ϴ� ǥ �� -->
</html>