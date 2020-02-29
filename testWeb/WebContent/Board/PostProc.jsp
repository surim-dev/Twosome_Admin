<%@ page contentType= "text/html;charset=EUC-KR"%>
<%@ page import="bean.*" %>

<%
	request.setCharacterEncoding("euc-kr");
%>
<jsp:useBean id="myBoard" class="bean.BoardBean"/> 
<jsp:setProperty name="myBoard" property="*"/>
<jsp:useBean id="myDB" class="bean.BoardMgr"/>

<%
	myDB.insertBoard(myBoard);
	//response.sendRedirect("List.jsp");
%>
<html>
<head><title>
</title></head>
<body>

11111111111111
</body>
</html>