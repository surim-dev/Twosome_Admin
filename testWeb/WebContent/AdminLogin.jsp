<%@ page contentType= "text/html;charset=EUC-KR"%>

<html>
	<head>
		<title> 관리자 로그인 페이지</title>
		<link href="../style.css" rel="stylesheet" type="text/css">
	
<script>
<!-- button (회원가입) 클릭시 알람 발생하고 Register 화면 이동 -->	
	function joinMsg(){
		alert("회원가입 페이지 이동");
		location.href="Register.jsp";
	}
</script>

	</head>
	
	<!-- 로그인 정보 입력 표 시작-->
	<body bgcolor="white" topmargin="100">
		<table width="75%" align="center" bgcolor="white">
			<tr bordercolor="black">
				<td height="190">

					<!-- submit (로그인) 클릭시 화면 이동 -->				
					<form method="post" action="login_process.jsp" name="login"> 
						<table width="50%" border="1" align="center">
							<tr bordercolor="white">
								<td colspan="2" align="center">관리자 로그인</td>
							</tr>
							<tr>
								<td width="47" align="center">아이디</td>
								<td width="53" align="center"><input type="text" name="admin_id"></td>
							</tr>
							<tr>
								<td width="47" align="center">패스워드</td>
								<td width="53" align="center"><input type="password" name="admin_passwd"></td>
							</tr>
							
							
							<!-- 표 하단 버튼 영역 -->	
							<tr>
								<td colspan="2" align="center">
									<input type="submit" value="로그인">
									&nbsp;&nbsp;&nbsp;&nbsp;
									<input type="reset" value="초기화">
								  	&nbsp;&nbsp;&nbsp;&nbsp;
									<input type="button" value="회원가입" onClick="joinMsg()" >
								</td>
							</tr>
						</table>
					</form>
				</td>
			</tr>
		</table>
	</body>
	<!-- 로그인 정보 입력 표 끝-->
</html>