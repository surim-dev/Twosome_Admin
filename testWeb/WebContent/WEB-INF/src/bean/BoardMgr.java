package bean;
import java.sql.*;
import java.util.*;

public class BoardMgr {
	
	Connection conn=null;
	Statement st =null;
	ResultSet rs =null;
	    
	public BoardMgr() {
		try {
			Class.forName ("oracle.jdbc.driver.OracleDriver");
			} catch (Exception e) {
			System.out.println("커넥션 실패");
		}
	}
		
	
	public void insertBoard(BoardBean boardBean) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		upPos();
		
		try {
			conn =DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "twosome_admin" , "18141814"); 
			st =conn.createStatement();
			String sql="insert into board"+"(num,name,email,subject,content,pos,regdate,pass,count,ip)"+"values(tem_seq.nextval,?,?,?,?,?,sysdate,?,?,?)";
			
			pstmt = conn.prepareStatement(sql); //prepareStatement는 위치홀더 (?)를 사용하여 sql을 정의할 수 있게 한다. 
			pstmt.setString(1, boardBean.getName()); //prepareStatement객체는 setXxxx메소드를 제공한다. setXxx(num, var) num은 파라미터 인덱스로 위치홀더(?)와 대응된다. var는 해당필드에 저장할 데이터 값이다. 
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
	
	public void upPos() {
		Connection conn = null;
		Statement stmt = null;
		
		try {
			conn =DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "twosome_admin" , "18141814"); 
			st =conn.createStatement();
			String sql ="update board set pos=pos+1";
			st.executeUpdate(sql);
			System.out.println("정상카운트");
		} catch(Exception ex) {
			System.out.println("upPos() Exception" + ex);
		}
	}

}
