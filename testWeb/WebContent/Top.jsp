<%@ page contentType= "text/html;charset=EUC-KR"%>

<%
	String id=(String)session.getAttribute("admin_id");
	
	if(id==null) {
		response.sendRedirect("AdminLogin.jsp");
	}
	
%>

<table width="95%" align="center" bgcolor="white">
	<tr bgcolor="white">
	<td align="center"><b><a href="Index.jsp">Ȩ</a></b></td>
	<td align="center"><b><a href="AdminLogout.jsp">�α׾ƿ�</a></b></td>
	<td align="center"><b>ȸ������</b></td>
	<td align="center"><b>��ǰ����</b></td>
	<td align="center"><b>�ֹ�����</b></td>
	<td align="center"><b>Q&A����</b></td>
	</tr>
</table>
	