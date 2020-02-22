<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" import="java.sql.*" %>

<%
Connection conn=null;
Statement st =null;
ResultSet rs =null;

try{
	Class.forName ("oracle.jdbc.driver.OracleDriver"); //JDBC 드라이버 로딩
	conn =DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "twosome_admin" , "18141814"); //데이터베이스와 연결되는 세션 역할

	st =conn.createStatement(); //Statement 객체는 Connection의 createStatement()메서드를 사용하여 생성
	st.executeUpdate("create table admin_info (admin_id char(10) primary key, admin_name char(10))"); // DB에 변경을 주는 SQL인 경우 사용 : insert, update, delete, create, drop, alter 

	rs=st.executeQuery("select* from admin_info"); //ResultSet 객체를 반환하는 SQL인 경우 사용 : select
	ResultSetMetaData rsmd = rs.getMetaData();

	out.println("새로운 테이블이 생성되었습니다.<br>");
	out.println(rsmd.getColumnCount()+"개의 컬럼(필드)을 가지고 있으며<br>");
	out.println("첫번째 컬럼은 "+rsmd.getColumnName(1)+"<br>");
	out.println("두번째 컬럼은 "+rsmd.getColumnName(2)+"<br>");
	
	rs.close();
	st.close();
	
} catch (SQLException e) {
	out.println(e);
}
%>
<A href=main.html>main으로</A>