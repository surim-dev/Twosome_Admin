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
		alert("로그인 되었습니다." + <%= admin_id %> );
		location.href="index.jsp";
				
	</script>

<%}else{%>

	<script>
		alert("입력한 정보가 정확하지 않습니다.");
		location.href="AdminLogin.jsp";
	</script>
	
<%}%>

