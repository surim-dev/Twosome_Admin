<%@ page contentType= "text/html;charset=EUC-KR"%>

<%
	session.removeAttribute("admin_id");
	
%>

<script>
	alert("로그아웃 되었습니다.");
	location.href="AdminLogin.jsp";
</script>