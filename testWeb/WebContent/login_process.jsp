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
		Class.forName ("oracle.jdbc.driver.OracleDriver"); //JDBC ����̹� �ε�
		conn =DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "twosome_admin" , "18141814"); //�����ͺ��̽��� ����Ǵ� ���� ����
		st =conn.createStatement(); //Statement ��ü�� SQL���� �����ͺ��̽��� ������ ���� ��ü. Connection�� createStatement()�޼��带 ����Ͽ� ����
				
		sql = "select* from admin_info where admin_id = '"+id+"'";
		sql = sql + "and admin_passwd = '"+password+"'";
		rs = st.executeQuery(sql);		
		
		if(rs.next()) {    //rs.next()�� �̿��ؼ� Ŀ���� �̵� . rs.next()�� false�� ��ȯ�ϸ� 
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
		session.setAttribute("admin_id", id); // ���ǿ� "admin_id"�̸����� id ���
		session.setAttribute("admin_name", name); 
		response.sendRedirect("Index.jsp");
		//out.println(session.getId()); //getId()�޼��� : ���� ������ ���� ������ ������ ID���� ��ȯ�Ѵ�. (��ȯ�� : String)
	}
	else {
		out.println("<script>alert('���̵�� ��й�ȣ�� Ȯ���ϼ���');history.back();</script>");
	}
%>
