package book.bean;
import java.sql.*;
import java.util.ArrayList;
import javax.naming.NamingException;

public class BoardDAO {

	 public int insertBook(BookRegister bookregister) throws SQLException
	    {
		 	int seq=0;
	    	Connection conn=null;
	    	PreparedStatement pstmt=null;
			ResultSet rs = null;
	        try {
	        	String jdbcUrl="jdbc:mysql://localhost:3306/basicjsp?serverTimezone=Asia/Seoul"; 	 
	            String dbId="jspid";
	            String dbPass="jsppass";
	        	 
	            Class.forName("com.mysql.cj.jdbc.Driver");   	 
	        	//데이터베이스 연결(connection)
	        	conn=DriverManager.getConnection(jdbcUrl,dbId ,dbPass );
	        	// 자동 커밋을 false로 한다.
	             conn.setAutoCommit(false);
	             String sql1="select COUNT(distinct seq) FROM basicjsp.BookRegister;";
	        	 pstmt=conn.prepareStatement(sql1);
				 rs = pstmt.executeQuery();
				 rs.next();
				 seq=rs.getInt(1)+1;
				 
	        	 String sql2= "insert into BookRegister values (?,?,?,?,?,?,?,?)";
	        	 pstmt=conn.prepareStatement(sql2);
	        	 pstmt.setLong(1, seq);
	        	 pstmt.setString(2, bookregister.getBook_title());
	             pstmt.setString(3, bookregister.getSubject_name());
	        	 pstmt.setString(4, bookregister.getPrice());
	             pstmt.setString(5, bookregister.getCclass());
	        	 pstmt.setString(6, bookregister.getUniversity());
	        	 pstmt.setString(7, bookregister.getMajor());
	        	 pstmt.setString(8, bookregister.getGrade());
	        	 pstmt.executeUpdate();

	            // 완료시 커밋
	            conn.commit(); 
	            return seq;
	        } catch (ClassNotFoundException | SQLException sqle) {
	            // 오류시 롤백
	            conn.rollback(); 
	            
	            throw new RuntimeException(sqle.getMessage());
	        } finally {
	            // Connection, PreparedStatement를 닫는다.
	            try{
	                if ( pstmt != null ){ pstmt.close(); pstmt=null; }
	                if ( conn != null ){ conn.close(); conn=null;    }
	            }catch(Exception e){
	                throw new RuntimeException(e.getMessage());
	            }
	        } // end try~catch 
	    } 
	 
	 public void insertScratch(Scratch scratch, String cb1,String cb2,String cb3,String cb4,String cb5) throws SQLException
	    {
	    	Connection conn=null;
	    	PreparedStatement pstmt=null;
			ResultSet rs = null;
			int seq=0;
			int num=0;
	        try {
	        	
	        	String jdbcUrl="jdbc:mysql://localhost:3306/basicjsp?serverTimezone=Asia/Seoul"; 	 
	            String dbId="jspid";
	            String dbPass="jsppass";
	             Class.forName("com.mysql.cj.jdbc.Driver");   	 
	        	 //데이터베이스 연결(connection)
	        	 conn=DriverManager.getConnection(jdbcUrl,dbId ,dbPass );
	        	// 자동 커밋을 false로 한다.
	             conn.setAutoCommit(false);
	             String sql1="select COUNT(distinct seq) FROM basicjsp.Scratch;";
	        	 pstmt=conn.prepareStatement(sql1);
				 rs = pstmt.executeQuery();
				 rs.next();
				 seq=rs.getInt(1)+1;

				 
	        	 String sql2= "insert into Scratch values (?,?,?,?,?,?,?,?,?,?)";
	        	 pstmt=conn.prepareStatement(sql2);
	        	 pstmt.setLong(1, seq);
	             pstmt.setString(2, scratch.getScore());
	        	 pstmt.setString(3, cb1);
	        	 pstmt.setString(4, scratch.getUnderlinec());
	        	 pstmt.setString(5, cb2);
	        	 pstmt.setString(6, scratch.getNotec());
	        	 pstmt.setString(7, cb3);
	        	 pstmt.setString(8, cb4);
	        	 pstmt.setString(9, cb5);
	        	 pstmt.setString(10, scratch.getPagen());
	        	 pstmt.executeUpdate();
	            // 쿼리 실행
	            pstmt.executeUpdate();
	            // 완료시 커밋
	            conn.commit(); 
	            
	        } catch (ClassNotFoundException | SQLException sqle) {
	            // 오류시 롤백
	            conn.rollback(); 
	            
	            throw new RuntimeException(sqle.getMessage());
	        } finally {
	            // Connection, PreparedStatement를 닫는다.
	            try{
	                if ( pstmt != null ){ pstmt.close(); pstmt=null; }
	                if ( conn != null ){ conn.close(); conn=null;    }
	            }catch(Exception e){
	                throw new RuntimeException(e.getMessage());
	            }
	        } // end try~catch 
	    } 
	 public void updateScratch(Scratch scratch, String seq, String cb1,String cb2,String cb3,String cb4,String cb5) throws SQLException
	    {
	    	Connection conn=null;
	    	PreparedStatement pstmt=null;
			ResultSet rs = null;
			int ss = Integer.parseInt(seq);
			try {
	        	
	        	String jdbcUrl="jdbc:mysql://localhost:3306/basicjsp?serverTimezone=Asia/Seoul"; 	 
	            String dbId="jspid";
	            String dbPass="jsppass";
	             Class.forName("com.mysql.cj.jdbc.Driver");   	 
	        	 conn=DriverManager.getConnection(jdbcUrl,dbId ,dbPass );
	             conn.setAutoCommit(false);


	        	 String sql1= "update basicjsp.Scratch set seq=?,score=?,underline=?,underlinec=?,note=?,notec=?,namec=?,cover=?,pagec=?,pagen=? where seq=?";
	        	 pstmt=conn.prepareStatement(sql1);
	        	 pstmt.setLong(1, ss);
	             pstmt.setString(2, scratch.getScore());
	        	 pstmt.setString(3, cb1);
	        	 pstmt.setString(4, scratch.getUnderlinec());
	        	 pstmt.setString(5, cb2);
	        	 pstmt.setString(6, scratch.getNotec());
	        	 pstmt.setString(7, cb3);
	        	 pstmt.setString(8, cb4);
	        	 pstmt.setString(9, cb5);
	        	 pstmt.setString(10, scratch.getPagen());
	        	 pstmt.setLong(11, ss);

	        	 pstmt.executeUpdate();
	            // 쿼리 실행
	            pstmt.executeUpdate();
	            // 완료시 커밋
	            conn.commit(); 
	            
	        } catch (ClassNotFoundException | SQLException sqle) {
	            // 오류시 롤백
	            conn.rollback(); 
	            
	            throw new RuntimeException(sqle.getMessage());
	        } finally {
	            // Connection, PreparedStatement를 닫는다.
	            try{
	                if ( pstmt != null ){ pstmt.close(); pstmt=null; }
	                if ( conn != null ){ conn.close(); conn=null;    }
	            }catch(Exception e){
	                throw new RuntimeException(e.getMessage());
	            }
	        } // end try~catch 
	    } 

	public ArrayList<Board> getList() throws NamingException, SQLException {
			Connection conn=null;
			PreparedStatement pstmt=null;
			ResultSet rs = null;
			try {
				String sql= "select distinct *  from basicjsp.BookRegister;";
		    	String jdbcUrl="jdbc:mysql://localhost:3306/basicjsp?serverTimezone=Asia/Seoul"; 	 
		        String dbId="jspid";
		        String dbPass="jsppass";
		        Class.forName("com.mysql.cj.jdbc.Driver");   	 
		    	conn=DriverManager.getConnection(jdbcUrl,dbId ,dbPass );
		        conn.setAutoCommit(false);
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				
				ArrayList<Board> feeds = new ArrayList<Board>();
				
				while (rs.next()) {
					feeds.add(new Board(rs.getInt("seq"), rs.getString("book_title"),rs.getString("subject_name"), rs.getString("price"),rs.getString("cclass"),rs.getString("university"),rs.getString("major"),rs.getString("grade")));
				}	      
				return feeds;
				
				}catch (ClassNotFoundException | SQLException sqle) {
		            // 오류시 롤백
		            conn.rollback(); 
		            
		            throw new RuntimeException(sqle.getMessage());
		        }
				finally {
					if ( pstmt != null ){ pstmt.close(); pstmt=null; }
		            if ( conn != null ){ conn.close(); conn=null;}
		            if ( rs != null ){ rs.close(); rs=null;    }
				}
			}
	public void updatebook(BookRegister bookregister) throws SQLException
    {
    	Connection conn=null;
    	PreparedStatement pstmt=null;
        try {
        	
        	String jdbcUrl="jdbc:mysql://localhost:3306/basicjsp?serverTimezone=Asia/Seoul"; 	 
            String dbId="jspid";
            String dbPass="jsppass";
             Class.forName("com.mysql.cj.jdbc.Driver");   	 
        	 //데이터베이스 연결(connection)
        	 conn=DriverManager.getConnection(jdbcUrl,dbId ,dbPass );
        	// 자동 커밋을 false로 한다.
             conn.setAutoCommit(false);
             
             String sql1="update basicjsp.BookRegister set seq=?,book_title=?,subject_name=?,price=?,cclass=?,university=?,major=?,grade=? where seq=?;";
        	 pstmt=conn.prepareStatement(sql1);
        	 
        	 pstmt.setLong(1, bookregister.getSeq());
        	 pstmt.setString(2, bookregister.getBook_title());
        	 pstmt.setString(3, bookregister.getSubject_name());
        	 pstmt.setString(4, bookregister.getPrice());
        	 pstmt.setString(5, bookregister.getCclass());
        	 pstmt.setString(6, bookregister.getUniversity());
        	 pstmt.setString(7, bookregister.getMajor());
        	 pstmt.setString(8, bookregister.getGrade());
        	 pstmt.setLong(9, bookregister.getSeq());
        	 
        	 pstmt.executeUpdate();
             conn.commit(); 
            
        } catch (ClassNotFoundException | SQLException sqle) {
            // 오류시 롤백
            conn.rollback(); 
            
            throw new RuntimeException(sqle.getMessage());
        } finally {
            // Connection, PreparedStatement를 닫는다.
            try{
                if ( pstmt != null ){ pstmt.close(); pstmt=null; }
                if ( conn != null ){ conn.close(); conn=null;    }
            }catch(Exception e){
                throw new RuntimeException(e.getMessage());
            }
        } // end try~catch 
    } 
	
	public void updatebook_1(String seq, String book, String subject,String price,String cclass,  String university, String major, String grade) throws SQLException
    {
    	Connection conn=null;
    	PreparedStatement pstmt=null;
        try {
        	
        	String jdbcUrl="jdbc:mysql://localhost:3306/basicjsp?serverTimezone=Asia/Seoul"; 	 
            String dbId="jspid";
            String dbPass="jsppass";
             Class.forName("com.mysql.cj.jdbc.Driver");   	 
        	 conn=DriverManager.getConnection(jdbcUrl,dbId ,dbPass );
             conn.setAutoCommit(false);
             
             String sql1="update basicjsp.BookRegister set seq=?,book_title=?,subject_name=?,price=?,cclass=?,university=?,major=?,grade=? where seq=?;";
        	 pstmt=conn.prepareStatement(sql1);
        	 int ss = Integer.parseInt(seq);
        	 pstmt.setLong(1, ss);
        	 pstmt.setString(2, book);
        	 pstmt.setString(3, subject);
        	 pstmt.setString(4, price);
        	 pstmt.setString(5, cclass);
        	 pstmt.setString(6,university);
        	 pstmt.setString(7, major);
        	 pstmt.setString(8, grade);
        	 pstmt.setLong(9, ss);
        	 
        	 pstmt.executeUpdate();
             conn.commit(); 
             //pstmt.close();
             //conn.close();

        } catch (ClassNotFoundException | SQLException sqle) {
            // 오류시 롤백
            conn.rollback(); 
            
            throw new RuntimeException(sqle.getMessage());
        } finally {
            // Connection, PreparedStatement를 닫는다.
            try{
                if ( pstmt != null ){ pstmt.close(); pstmt=null; }
                if ( conn != null ){ conn.close(); conn=null;    }
            }catch(Exception e){
                throw new RuntimeException(e.getMessage());
            }
        } // end try~catch 
    } 
	public int deleteBook(String boards) throws SQLException
    {
       int seq=0;
       Connection conn=null;
       PreparedStatement pstmt1=null;
       PreparedStatement pstmt2=null;

       seq = Integer.parseInt(boards);
        try {
            String jdbcUrl="jdbc:mysql://localhost:3306/basicjsp?serverTimezone=Asia/Seoul";     
            String dbId="jspid";
            String dbPass="jsppass";
         
            Class.forName("com.mysql.cj.jdbc.Driver");       
            conn=DriverManager.getConnection(jdbcUrl,dbId ,dbPass );
            conn.setAutoCommit(false);
            String sql1="delete from BookRegister where seq = ?";
            pstmt1=conn.prepareStatement(sql1);
            pstmt1.setInt(1, seq);
            pstmt1.executeUpdate();

            String sql2="delete from Scratch where seq = ?";
            pstmt2=conn.prepareStatement(sql2);
            pstmt2.setInt(1, seq);
            pstmt2.executeUpdate();

            conn.commit(); 
            
            
        } catch (ClassNotFoundException | SQLException sqle) {
            conn.rollback(); 
            
            throw new RuntimeException(sqle.getMessage());
        } finally {
            try{
                if ( pstmt1 != null ){ pstmt1.close(); pstmt1=null; }
                if ( pstmt2 != null ){ pstmt2.close(); pstmt2=null; }
                if ( conn != null ){ conn.close(); conn=null;    }
            }catch(Exception e){
                throw new RuntimeException(e.getMessage());
            }
        } // end try~catch 
        return seq;
    } 
	
	public int changeSeq(int seq) throws SQLException
    {
       Connection conn=null;
       PreparedStatement pstmt=null;
       PreparedStatement pstmt2=null;
       ResultSet rs = null;
       int check=0;
       
        try {
            String jdbcUrl="jdbc:mysql://localhost:3306/basicjsp?serverTimezone=Asia/Seoul";     
            String dbId="jspid";
            String dbPass="jsppass";
         
            Class.forName("com.mysql.cj.jdbc.Driver");       
            conn=DriverManager.getConnection(jdbcUrl,dbId ,dbPass );
            conn.setAutoCommit(false);
            String sql1="select * from BookRegister";
            pstmt=conn.prepareStatement(sql1);
			rs = pstmt.executeQuery();
			
			 while (rs.next()) {
				 check = rs.getInt("seq");
				 if (check > seq) { 
					 int result = check-1;
					 String sql2 = "update BookRegister set seq=? where seq = ?";
			         pstmt2=conn.prepareStatement(sql2);
			         pstmt2.setInt(1, result);
			         pstmt2.setInt(2, check);
			         pstmt2.executeUpdate();
					}
			 }
				 
            conn.commit(); 
            
            
        } catch (ClassNotFoundException | SQLException sqle) {
            conn.rollback(); 
            
            throw new RuntimeException(sqle.getMessage());
        } finally {
            try{
                if ( pstmt != null ){ pstmt.close(); pstmt=null; }
                if ( pstmt2 != null ){ pstmt2.close(); pstmt2=null; }
                if ( conn != null ){ conn.close(); conn=null;    }
            }catch(Exception e){
                throw new RuntimeException(e.getMessage());
            }
        } // end try~catch 
        return check;
    } 
}

	
