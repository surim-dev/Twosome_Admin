<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>

<%
    //�� db ���ӿ� ����� conn ����
    Connection conn = null;
    //����Ŭ ����̹� ��� ����
    String driver = "oracle.jdbc.driver.OracleDriver";
    //�� db�� ���� ��� ����
    String url = "jdbc:oracle:thin:@localhost:1521:xe";
    String id = "twosome_admin";
    String pass = "18141814";
    
    //���� ����,���� ���� ���� ���� ����
    Boolean connect = false;
    ResultSet rs = null;
    Statement stmt = null;
    Vector vecList = new Vector();
    String str1 = "";
    String str2 = "";
    
    //db ���� �ڵ�� �ݵ�� try~catch�� �ȿ� �������
    try {
        //����Ŭ ����̹� ����
        Class.forName(driver);
        //�� db ����
        conn = DriverManager.getConnection(url, id, pass);
        stmt =  conn.createStatement();
        
        rs = stmt.executeQuery("select * from TB_ADMIN_MEMBER_INFO");

    	while(rs.next()){
    		
    		str1 = rs.getString("ADMIN_ID");
    		str2 = rs.getString("admin_passwd");
    		
    		System.out.println("id :" + str1 + " /dfgdfgdfgdfg admin_passwd :" + str2 );
    		
    	}

        //���Ӽ����� true ����
        connect = true;
        //���� ����, ���� ���� : �׻� db�� ����Ǿ� ������ ���� ���� �� ������ �浹�� �Ͼ�� ���� 
        conn.close();
    } catch (Exception e) {
        //���� ���н� false ��� ����ó������
        connect = false;
        e.printStackTrace();
    }
    


      
%>
<%
if(connect==true){%>
    ����Ǿ����ϴ�.
<%}else{ %>
    ���ῡ �����Ͽ����ϴ�.
<%}%>
 
