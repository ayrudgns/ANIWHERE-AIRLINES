package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class OracleConnectionUtil {
//�����ø����̼ǿ� ojdbc11.jar ������ WEB-INF ���� �Ʒ� lib ������ �����ؼ� ���̺귯�� ����մϴ�.
//		          ==> java 11�����̻��̾�� �մϴ�. 
	public static Connection connect() {  
		Connection conn = null;

		String url = "jdbc:oracle:thin:@localhost:1521:XE";  
		String driver="oracle.jdbc.driver.OracleDriver";     
		String user ="c##airlines";				
		String password="1234";				
		
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url,user,password);    
		} catch (ClassNotFoundException e) {
			System.out.println("db������� : " + e.getMessage());
		} catch (SQLException e) {
			System.out.println("SQL���� : " + e.getMessage());
		} 
		return conn;   
	}

	public static void close(Connection conn,PreparedStatement pstmt) {
			try {
				if(conn !=null) conn.close();
				if(pstmt !=null) pstmt.close();
			} catch (SQLException e) {
				System.out.println("db close ����: " + e.getMessage());
			}
	}
	
}
