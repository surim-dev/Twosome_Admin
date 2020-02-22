<%@ page contentType="text/html; charset=euc-kr"%>
<%@ page language="java" import="java.sql.*,java.io.*,java.text.*,java.net.*,java.util.*"%>

<%
	String id = request.getParameter("admin_id");
	String password = request.getParameter("admin_passwd");
	Connection conn = null;
	Statement st = null;
	ResultSet rs = null;
	String sql = new String();
	String name = new String();
	boolean bLogin = false;
	
	try{
		Class.forName ("oracle.jdbc.driver.OracleDriver"); //JDBC 드라이버 로딩
		conn =DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "twosome_admin" , "18141814"); //데이터베이스와 연결되는 세션 역할
		st =conn.createStatement(); //Statement 객체는 SQL문을 데이터베이스로 보내기 위한 객체. Connection의 createStatement()메서드를 사용하여 생성
				
		sql = "select* from admin_info where admin_id = '"+id+"'";
		sql = sql + "and admin_passwd = '"+password+"'";
		rs = st.executeQuery(sql);		
		
		if(rs.next()) {    //rs.next()를 이용해서 커서를 이동 . rs.next()가 false를 반환하면 
			id = rs.getString("admin_id");
			bLogin = true;
		} else {
			bLogin = false;
		}		
		rs.close();
		st.close();
		conn.close();
		
	} catch (SQLException e) {
		
		out.println(e.getMessage());
	}
	
	if (bLogin) {
		session.setAttribute("admin_id", id); // 세션에 "admin_id"이름으로 id 등록
		session.setAttribute("admin_name", name); 
		response.sendRedirect("Index.jsp");
		//out.println(session.getId()); //getId()메서드 : 서블릿 엔진에 의해 지정된 세션의 ID값을 반환한다. (반환값 : String)
	}
	else {
		out.println("<script>alert('아이디와 비밀번호를 확인하세요');history.back();</script>");
	}
%>
