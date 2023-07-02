package book.bean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.HttpServlet;

public class BoardImage {
	public void insertImage(String boards,String filename, String path, String otherpath) throws SQLException
    {
		int seq=Integer.parseInt(boards);
		Connection conn=null;
    	PreparedStatement pstmt=null;
		ResultSet rs = null;
        try {
        	String jdbcUrl="jdbc:mysql://localhost:3306/basicjsp?serverTimezone=Asia/Seoul"; 	 
            String dbId="jspid";
            String dbPass="jsppass";
        	 
            Class.forName("com.mysql.cj.jdbc.Driver");   	 
        	conn=DriverManager.getConnection(jdbcUrl,dbId ,dbPass );
             conn.setAutoCommit(false);
			 
        	 String sql2= "insert into ImageSave values (?,?,?,?)";
        	 pstmt=conn.prepareStatement(sql2);
        	 pstmt.setLong(1, seq);
        	 pstmt.setString(2, filename);
        	 pstmt.setString(3, path);
        	 pstmt.setString(4, otherpath);

        	 pstmt.executeUpdate();
            conn.commit(); 
            
        } catch (ClassNotFoundException | SQLException sqle) {
            conn.rollback(); 
            
            throw new RuntimeException(sqle.getMessage());
        } finally {
            try{
                if ( pstmt != null ){ pstmt.close(); pstmt=null; }
                if ( conn != null ){ conn.close(); conn=null;    }
            }catch(Exception e){
                throw new RuntimeException(e.getMessage());
            }
        } 
    } 
}
