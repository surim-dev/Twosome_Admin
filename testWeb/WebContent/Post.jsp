<%@ page contentType= "text/html;charset=EUC-KR"%>
<html>
<head>
<title>���� �Խ���</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body>
<center>
<br><br>
<table width=80% cellspacing=0 cellpadding=3>
	<tr>
	<td bgcolor=84F399 height=25 align=center>���� ���</td>
	</tr>
</table>
<br>
<table width=80% cellspacing=0 cellpading=3 align=center>
<form name=post method=post action="PostProc.jsp">
	<tr>
		<td align=center>
		<table border=0 width=100% align=center>
	<tr>
		<td width=10%>����</td>
		<td width=90%><input type=text name=name size=15 maxlength=8></td>
	</tr>
	<tr>
		<td width=10%>�̸���</td>
		<td width=90%><input type=text name=email size=50 maxlength=30></td>
	</tr>
	<tr>
		<td width=10%>����</td>
		<td width=90%><input type=text name=subject size=50 maxlength=30></td>
	</tr>
	<tr>
		<td width=10%>����</td>
		<td width=90%><textarea name=content rows=10 cols=53></textarea></td>
	</tr>
	<tr>
		<td width=10%>��й�ȣ</td>
		<td width=90%><input type=password name=pass size=15 maxlength=15></td>
	</tr>
	<tr>
	<td colspan=2><hr size=1></td>
	</tr>
	<tr>
		<td colspan="2" align="center">
		<input type=submit value="���">&nbsp;&nbsp;
		<input type=reset value="�ٽþ���">&nbsp;&nbsp;
		</td>
	</tr>
		<input type=hidden name=ip value="<%=request.getRemoteAddr()%>">
		</table>
	</td>
	</tr>
</form>
</table>
</center></body>
</html>