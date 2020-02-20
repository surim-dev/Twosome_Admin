<%@ page contentType= "text/html;charset=EUC-KR"%>

<%
	String id=(String)session.getAttribute("admin_id");
	
	if(id==null) {
		response.sendRedirect("AdminLogin.jsp");
	}
	
%>

<table width="95%" align="center" bgcolor="white">
	<tr bgcolor="white">
	<td align="center"><b><a href="Index.jsp">홈</a></b></td>
	<td align="center"><b><a href="AdminLogout.jsp">로그아웃</a></b></td>
	<td align="center"><b>회원관리</b></td>
	<td align="center"><b>상품관리</b></td>
	<td align="center"><b>게시판관리</b></td>
	</tr>
</table>
	