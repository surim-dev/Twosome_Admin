<%@ page contentType= "text/html;charset=EUC-KR"%>
<%
	request.setCharacterEncoding("euc-kr");
%>
<jsp:useBean id="regBean" scope="page" class="bean.RegisterBean"/>
<jsp:setProperty name="regBean" property="*"/>	
	
<html>
	<head>
		<title> ȸ������ ���� ������ </title>
		<link href="../style.css" rel="stylesheet" type="text/css">
	
	
	</head>
	<body bgcolor="white" topmargin="100">
		
		<table width="75%" align="center" bgcolor="white">
			<tr bordercolor="black">
				<td height="190">
<center>			
<font size=3>
ȸ�������� ���ϵ帳�ϴ�. 
</font>
<br>
<br>
<% out.println("<a href=AdminLogin.jsp>�α���</a>");%>
</center>		
				</td>
			</tr>
		</table>
	</body>
</html>