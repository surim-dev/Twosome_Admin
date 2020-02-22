<%@ page contentType= "text/html;charset=EUC-KR"%>
<html>
<head>
<title>문의 게시판</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body>
<center>
<br><br>
<table width=80% cellspacing=0 cellpadding=3>
	<tr>
	<td bgcolor=84F399 height=25 align=center>문의 등록</td>
	</tr>
</table>
<br>
<table width=80% cellspacing=0 cellpading=3 align=center>
<form name=post method=post action="PostProc.jsp">
	<tr>
		<td align=center>
		<table border=0 width=100% align=center>
	<tr>
		<td width=10%>성명</td>
		<td width=90%><input type=text name=name size=15 maxlength=8></td>
	</tr>
	<tr>
		<td width=10%>이메일</td>
		<td width=90%><input type=text name=email size=50 maxlength=30></td>
	</tr>
	<tr>
		<td width=10%>제목</td>
		<td width=90%><input type=text name=subject size=50 maxlength=30></td>
	</tr>
	<tr>
		<td width=10%>내용</td>
		<td width=90%><textarea name=content rows=10 cols=53></textarea></td>
	</tr>
	<tr>
		<td width=10%>비밀번호</td>
		<td width=90%><input type=password name=pass size=15 maxlength=15></td>
	</tr>
	<tr>
	<td colspan=2><hr size=1></td>
	</tr>
	<tr>
		<td colspan="2" align="center">
		<input type=submit value="등록">&nbsp;&nbsp;
		<input type=reset value="다시쓰기">&nbsp;&nbsp;
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