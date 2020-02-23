package bean;
import java.sql.*;
import java.util.*;

public class BoardMgr {
	
	Connection conn=null;
	Statement st =null;
	ResultSet rs =null;
	    
	public void insertBoard(BoardBean boardBean) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		//upPos();
		
		try {
			Class.forName ("oracle.jdbc.driver.OracleDriver");
			conn =DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "twosome_admin" , "18141814"); 
			st =conn.createStatement();
			String sql="insert into board"+"(num,name,email,subject,content,pos,regdate,pass,count,ip)"+"values(2,?,?,?,?,?,sysdate,?,?,?)";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, boardBean.getName());
			pstmt.setString(2, boardBean.getEmail());
			pstmt.setString(3, boardBean.getSubject());
			pstmt.setString(4, boardBean.getContent());
			pstmt.setInt(5, boardBean.getPos());
			pstmt.setString(6, boardBean.getPass());
			pstmt.setInt(7, boardBean.getCount());
			pstmt.setString(8, boardBean.getIp());
			pstmt.executeUpdate();
			System.out.println("정상입력");

		} catch(Exception ex) {
				System.out.println("insertBoard() Exception" + ex);
		}
	}
	
	/*public void upPos() {
		Connection conn = null;
		Statement stmt = null;
		
		try {
			Class.forName ("oracle.jdbc.driver.OracleDriver");
			conn =DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "twosome_admin" , "18141814"); 
			st =conn.createStatement();
			String sql ="update board set pos=pos+1";
			stmt.executeUpdate(sql);
			System.out.println("정상카운트");
		} catch(Exception ex) {
			System.out.println("upPos() Exception" + ex);
		}
	}*/

}
