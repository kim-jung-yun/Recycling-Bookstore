<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<% request.setCharacterEncoding("utf-8"); %> 

<% 
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String passwd = request.getParameter("passwd");    
	String major = request.getParameter("major");    
	String number = request.getParameter("number");  
	String university = request.getParameter("university");    
	String grade = request.getParameter("grade");    


   Connection conn=null;
   PreparedStatement pstmt=null;
   try{
	 String jdbcUrl="jdbc:mysql://localhost:3306/basicjsp?serverTimezone=Asia/Seoul"; 	 
     String dbId="jspid";
     String dbPass="jsppass";
 	 
	 Class.forName("com.mysql.cj.jdbc.Driver");   	 
 	 //데이터베이스 연결(connection)
 	 conn=DriverManager.getConnection(jdbcUrl,dbId ,dbPass );
 	
 	 String sql1= "insert into MemberRegister values (?,?,?,?,?,?,?)";
 	 pstmt=conn.prepareStatement(sql1);
 	 pstmt.setString(1, name);
     pstmt.setString(2, email);
 	 pstmt.setString(3, university);
 	 pstmt.setString(4, major);
 	 pstmt.setString(5, grade);
 	 pstmt.setString(6, number);
 	 pstmt.setString(7, passwd);
 	 
 	 pstmt.executeUpdate();
 	 
 	}
   
   catch(Exception e){ 
 		e.printStackTrace();
 	}
   
   finally{
 		if(pstmt != null) 
 			try{pstmt.close();}
 		catch(SQLException sqle){}
 		if(conn != null) 
 			try{conn.close();}catch(SQLException sqle){}
 	}
 %>
<!DOCTYPE html>
<html>
 <style>html, body { margin: 0; padding: 0; height: 100%; text-align: center; }
    header { width: 100%; height: 15%; }
    nav { width: 20%; height: 70%; float: left; }
    section { width: 60%; height: 70%; float: left; }
    aside { width: 20%; height: 70%; float: left; }
    footer { width: 100%; height: 15%; ; }
 </style>
<meta charset="UTF-8">
<body>
<header class="header"><title>회원가입 완료</title></header> 
<nav class="nav"></nav>
<section class="section"><p>
	<h1><%=name %>님, 회원가입이 완료되었습니다.</h1>
	<input type="button" onClick="location.href='login_1.jsp'" target="_self" value="로그인"><br><br>
	<a href="universityOk.jsp" target="_self">대학인증하러가기</a>
	
</body>
</html>