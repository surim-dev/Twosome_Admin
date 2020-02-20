<%@ page contentType= "text/html;charset=EUC-KR"%>

<%
	String id=(String)session.getAttribute("admin_id");
	
	if(id==null) {
		response.sendRedirect("AdminLogin.jsp");
	}
	
%>

<table width="95%" align="center" bgcolor="white">
	<tr bgcolor="white">
	<td align="center"><b><a href="Index.jsp">权</a></b></td>
	<td align="center"><b><a href="AdminLogout.jsp">肺弊酒眶</a></b></td>
	<td align="center"><b>雀盔包府</b></td>
	<td align="center"><b>惑前包府</b></td>
	<td align="center"><b>林巩包府</b></td>
	<td align="center"><b>Q&A包府</b></td>
	</tr>
</table>
	