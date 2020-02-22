<%@ page contentType= "text/html;charset=EUC-KR"%>

<jsp:useBean id="regBean" scope="page" class="bean.RegisterBean"/> 
<jsp:setProperty name="regBean" property="*"/> 

<html>
	<head>
		<title> 회원가입 확인 페이지</title>
		<link href="../style.css" rel="stylesheet" type="text/css">
		<script language="javaScript" src="script.js"></script>		
	

	</head>
		<!-- 작성한 내용을 확인하는 표 시작 -->
		<body bgcolor="white">
			<!-- submit 입력시 Insert.jsp 로 이동 -->
			<form action="Insert.jsp" method="post" name="regForm">
				<table width="50%" border="1" align="center">
					<tr bordercolor="white">
						<td colspan="2" align="center">작성하신 내용입니다. 확인해주세요. </td>
					</tr>
					<tr>
						<td width="47" align="center">아이디</td>
						<td width="53" align="left"><input type="text" name="admin_id" value="<jsp:getProperty name="regBean" property="admin_id"/>"></td>
					</tr>
					<tr>
						<td width="47" align="center">패스워드</td>
						<td width="53" align="left"><input type="text" name="admin_passwd" value="<jsp:getProperty name="regBean" property="admin_passwd"/>"></td>
					</tr>
					<tr>
						<td width="47" align="center">이름</td>
						<td width="53" align="left"><input type="text" name="admin_name" value="<jsp:getProperty name="regBean" property="admin_name"/>"></td>
					</tr>
					<tr>
						<td width="47" align="center">이메일</td>
						<td width="53" align="left"><input type="text" name="admin_email" value="<jsp:getProperty name="regBean" property="admin_email"/>"></td>
					</tr>
					<tr>
						<td colspan="2" align="center">
						<input type="submit" value="확인완료">
						&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="button" value="다시쓰기" onClick="history.back()">
						</td>
					</tr>
			</table>
		</form>
	</body>
</html>