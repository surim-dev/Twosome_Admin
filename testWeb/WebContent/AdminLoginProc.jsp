<%@ page contentType= "text/html;charset=EUC-KR"%>
<%--<jsp:useBean id="memMgr" class="Practice.MemberMgr"/>
--%>
<%
String admin_id = request.getParameter("admin_id");
String admin_passwd = request.getParameter("admin_passwd");

//boolean adminCheck = memMgr.adminCheck(admin_id, admin_passwd);

//if(adminCheck){
if(true){
		session.setAttribute("adminKey",admin_id);
%>

	<script>
		alert("�α��� �Ǿ����ϴ�." + <%= admin_id %> );
		location.href="index.jsp";
				
	</script>

<%}else{%>

	<script>
		alert("�Է��� ������ ��Ȯ���� �ʽ��ϴ�.");
		location.href="AdminLogin.jsp";
	</script>
	
<%}%>

