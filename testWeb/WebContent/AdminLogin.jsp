<%@ page contentType= "text/html;charset=EUC-KR"%>

<html>
	<head>
		<title> ������ �α��� ������</title>
		<link href="../style.css" rel="stylesheet" type="text/css">
	
<script>
<!-- button (ȸ������) Ŭ���� �˶� �߻��ϰ� Register ȭ�� �̵� -->	
	function joinMsg(){
		alert("ȸ������ ������ �̵�");
		location.href="Register.jsp";
	}
</script>

	</head>
	
	<!-- �α��� ���� �Է� ǥ ����-->
	<body bgcolor="white" topmargin="100">
		<table width="75%" align="center" bgcolor="white">
			<tr bordercolor="black">
				<td height="190">

					<!-- submit (�α���) Ŭ���� ȭ�� �̵� -->				
					<form method="post" action="login_process.jsp" name="login"> 
						<table width="50%" border="1" align="center">
							<tr bordercolor="white">
								<td colspan="2" align="center">������ �α���</td>
							</tr>
							<tr>
								<td width="47" align="center">���̵�</td>
								<td width="53" align="center"><input type="text" name="admin_id"></td>
							</tr>
							<tr>
								<td width="47" align="center">�н�����</td>
								<td width="53" align="center"><input type="password" name="admin_passwd"></td>
							</tr>
							
							
							<!-- ǥ �ϴ� ��ư ���� -->	
							<tr>
								<td colspan="2" align="center">
									<input type="submit" value="�α���">
									&nbsp;&nbsp;&nbsp;&nbsp;
									<input type="reset" value="�ʱ�ȭ">
								  	&nbsp;&nbsp;&nbsp;&nbsp;
									<input type="button" value="ȸ������" onClick="joinMsg()" >
								</td>
							</tr>
						</table>
					</form>
				</td>
			</tr>
		</table>
	</body>
	<!-- �α��� ���� �Է� ǥ ��-->
</html>