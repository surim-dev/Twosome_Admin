<%@ page contentType= "text/html;charset=EUC-KR"%>

<jsp:useBean id="regBean" scope="page" class="bean.RegisterBean"/> 
<jsp:setProperty name="regBean" property="*"/> 

<html>
	<head>
		<title> ȸ������ Ȯ�� ������</title>
		<link href="../style.css" rel="stylesheet" type="text/css">
		<script language="javaScript" src="script.js"></script>		
	

	</head>
		<!-- �ۼ��� ������ Ȯ���ϴ� ǥ ���� -->
		<body bgcolor="white">
			<!-- submit �Է½� Insert.jsp �� �̵� -->
			<form action="Insert.jsp" method="post" name="regForm">
				<table width="50%" border="1" align="center">
					<tr bordercolor="white">
						<td colspan="2" align="center">�ۼ��Ͻ� �����Դϴ�. Ȯ�����ּ���. </td>
					</tr>
					<tr>
						<td width="47" align="center">���̵�</td>
						<td width="53" align="left"><input type="text" name="admin_id" value="<jsp:getProperty name="regBean" property="admin_id"/>"></td>
					</tr>
					<tr>
						<td width="47" align="center">�н�����</td>
						<td width="53" align="left"><input type="text" name="admin_passwd" value="<jsp:getProperty name="regBean" property="admin_passwd"/>"></td>
					</tr>
					<tr>
						<td width="47" align="center">�̸�</td>
						<td width="53" align="left"><input type="text" name="admin_name" value="<jsp:getProperty name="regBean" property="admin_name"/>"></td>
					</tr>
					<tr>
						<td width="47" align="center">�̸���</td>
						<td width="53" align="left"><input type="text" name="admin_email" value="<jsp:getProperty name="regBean" property="admin_email"/>"></td>
					</tr>
					<tr>
						<td colspan="2" align="center">
						<input type="submit" value="Ȯ�οϷ�">
						&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="button" value="�ٽþ���" onClick="history.back()">
						</td>
					</tr>
			</table>
		</form>
	</body>
</html>