package book.bean;
import java.sql.*;
import javax.naming.NamingException;
import book.bean.MemberRegister;

public class MemberDAO 
{
    private static MemberDAO instance;
    
    // 싱글톤 패턴
    private MemberDAO(){}
    public static MemberDAO getInstance(){
        if(instance==null)
            instance=new MemberDAO();
        return instance;
    }
    
    // 회원정보를 JSP_MEMBER 테이블에 저장하는 메서드
    public void insertMember(MemberRegister member) throws SQLException
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
        	
        	 String sql= "insert into MemberRegister values (?,?,?,?,?,?,?)";
        	 pstmt=conn.prepareStatement(sql);
        	 pstmt.setString(1, MemberRegister.getEmail());
             pstmt.setString(2, MemberRegister.getPasswd());
        	 pstmt.setString(3, MemberRegister.getName());
        	 pstmt.setString(4, MemberRegister.getMajor());
        	 pstmt.setString(5, MemberRegister.getNumber());
        	 pstmt.setString(6, MemberRegister.getUniversity());
        	 pstmt.setString(7, MemberRegister.getGrade());
        	 
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
    } // end insertMember()
    
    
    // 로그인시 아이디, 비밀번호 체크 메서드
    // 아이디, 비밀번호를 인자로 받는다.
    public int loginCheck(String email, String pw) 
    {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
 
        String dbPW = ""; // db에서 꺼낸 비밀번호를 담을 변수
        int x = -1;
 
        try {
        	String jdbcUrl="jdbc:mysql://localhost:3306/basicjsp?serverTimezone=Asia/Seoul"; 	 
            String dbId="jspid";
            String dbPass="jsppass";
        	 
             Class.forName("com.mysql.cj.jdbc.Driver");   	 
        	 //데이터베이스 연결(connection)
        	 conn=DriverManager.getConnection(jdbcUrl,dbId ,dbPass );
        	 
            // 쿼리 - 먼저 입력된 아이디로 DB에서 비밀번호를 조회한다.
            StringBuffer query = new StringBuffer();
            query.append("SELECT passwd FROM MemberRegister WHERE email=?");
            pstmt = conn.prepareStatement(query.toString());
            pstmt.setString(1, email);
            rs = pstmt.executeQuery();
 
            if (rs.next()) // 입려된 아이디에 해당하는 비번 있을경우
            {
                dbPW = rs.getString("passwd"); // 비번을 변수에 넣는다.
 
                if (dbPW.equals(pw)) 
                    x = 1; // 넘겨받은 비번과 꺼내온 배번 비교. 같으면 인증성공
                else                  
                    x = 0; // DB의 비밀번호와 입력받은 비밀번호 다름, 인증실패
                
            } else {
                x = -1; // 해당 아이디가 없을 경우
            }
 
            return x;
 
        } catch (Exception sqle) {
            throw new RuntimeException(sqle.getMessage());
        } finally {
            try{
                if ( pstmt != null ){ pstmt.close(); pstmt=null; }
                if ( conn != null ){ conn.close(); conn=null;    }
            }catch(Exception e){
                throw new RuntimeException(e.getMessage());
            }
        }
    } // end loginCheck()
}
