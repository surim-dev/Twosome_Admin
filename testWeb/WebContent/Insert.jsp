<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" import="java.sql.*" %>

<%
String id = request.getParameter("admin_id");
int password = Integer.parseInt(request.getParameter("admin_passwd"));
String name = request.getParameter("admin_name");
String email = request.getParameter("admin_email");

String sql = null;
Connection conn=null;
Statement st =null;
ResultSet rs =null;
int cnt= 0;

try{
	Class.forName ("oracle.jdbc.driver.OracleDriver"); //JDBC 드라이버 로딩
	conn =DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "twosome_admin" , "18141814"); //데이터베이스와 연결되는 세션 역할

	st =conn.createStatement(); //Statement 객체는 SQL문을 데이터베이스로 보내기 위한 객체. Connection의 createStatement()메서드를 사용하여 생성
	rs =st.executeQuery("select* from admin_info where admin_id ='"+id+"'"); //ResultSet 객체를 반환하는 SQL인 경우 사용 : select
	
	if(!(rs.next())) {    //rs.next()를 이용해서 커서를 이동 . rs.next()가 false를 반환하면 
		sql = "insert into admin_info (admin_id, admin_passwd, admin_name, admin_email)";
		sql = sql + "values('"+id+"','"+password+"','"+name+"','"+email+"')";
		cnt = st.executeUpdate(sql); // 입력한 값을 가진 레코드를 테이블에 추가한다
		if (cnt>0)
			out.println("회원가입이 성공적으로 되었습니다.");
		else
			out.println("데이터가 입력되지 않았습니다.");
	} else
		out.println("ID가 이미 등록되어 있습니다.");
	
	rs.close();
	st.close();
	conn.close();
	
} catch (SQLException e) {
	
	out.println(e.getMessage());
}
%>
