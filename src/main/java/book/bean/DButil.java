package book.bean;
import java.sql.*;

public class DButil {
	public static Connection getMySQLConnection() {
		Connection conn = null;
		
		try {
			String jdbcUrl="jdbc:mysql://localhost:3306/basicjsp?serverTimezone=Asia/Seoul"; 	 
            String dbId="jspid";
            String dbPass="jsppass";
        	 
             Class.forName("com.mysql.cj.jdbc.Driver");   	 
        	 //데이터베이스 연결(connection)
        	 conn=DriverManager.getConnection(jdbcUrl,dbId ,dbPass );
		} catch (ClassNotFoundException e) {
			System.out.println("MYSQL드라이버가 없습니다.");
		} catch  (SQLException e) {
			System.out.println("사용자 계정 또는 비밀번호가 일치하지않습니다.");
		}
		return conn;
	}
}
