<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page trimDirectiveWhitespaces="true" %>
<%@ page import="java.sql.*"%>
<%@ page import = "java.util.ArrayList" %>
<%@ page import = "book.bean.*" %>
<!DOCTYPE html>
<html>
    <meta charset="UTF-8"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
<head><title>목록</title>
<style>
html, body { margin: 0; padding: 5; width : 100%; height: 100%; }
header { width: 100%; height: 15%; }
nav { width: 10%; height: 70%; float: left;  }
section { width: 70%; height: 100%; float: left; background-color: #ede5d0; text-align: center;}
aside { width: 10%; height: 70%; float: left; }
footer { width: 100%; height: 10%;  }
</style>
</head>
<body>
	<header class="header"> </header> 
	<nav class="nav">  </nav>
	<section class="section"> 
	<a href="login.html" target="_blank" id="anchor" style="float: right;">로그아웃</a><br>
	<h1>판매목록<br>
	<input type="button" value="글쓰기" OnClick="window.location='register.jsp'"> 
	<form method="get" action="list_result.jsp"> 
    	<fieldset>
        <legend><h1>책 검색</h1></legend>
            <tr>
                <td>
                책이름 :</td>
                <td><input type="text" size="10" name="book_title"></td>
                <td></td>

            <tr>
                <td>
                학과 :</td>
                <td><input type="text" size="10" name="major"></td>
                    <td></td>
            <tr>  
                <td>
                학년 :</td>
                <td><input type="text" list="grade" name="grade"><br>
                            <datalist id="grade">
                            <option value="1">
                            <option value="2">
                            <option value="3">
                            <option value="4">
                            </datalist></td>
            <tr>
                <td><input type="submit" value="검색"></td>
            </tr>
        </fieldset>
            <br><br>
        <secttion class="section">           
                <% 
	request.setCharacterEncoding("utf-8");
	String book_title = request.getParameter("book_title");
	String grade = request.getParameter("grade");
	String major = request.getParameter("major");

	Connection conn = null;
	PreparedStatement pstmt=null;
	ResultSet rs = null;
	String sql1;
	String jdbcUrl="jdbc:mysql://localhost:3306/basicjsp?serverTimezone=Asia/Seoul"; 	 
	String dbId="jspid";
	String dbPass="jsppass";
	boolean bc,mc,gc;
		try {
			
		    Class.forName("com.mysql.cj.jdbc.Driver");   	 
			conn=DriverManager.getConnection(jdbcUrl,dbId ,dbPass );
			bc=book_title.isEmpty();
			gc=grade.isEmpty();
			mc=major.isEmpty();
			
			if(bc==false && gc==false && mc==false)		//제목0,학년0,전공0
			{
					sql1 = "select distinct * from BookRegister where book_title =? and major=? and grade=?";
       	 			pstmt=conn.prepareStatement(sql1);
 					pstmt.setString(1, book_title);
 					pstmt.setString(2, major);
 					pstmt.setString(3, grade);
			}
			else if(bc==false && gc==true && mc == true){		//제목0,전공x,학년x
					sql1 = "select distinct * from BookRegister where book_title =?";
	       	 		pstmt=conn.prepareStatement(sql1);
	 				pstmt.setString(1, book_title);
				}
			else if (bc==false && gc==true && mc == false){	//제목0,전공0,학년x
					sql1 = "select distinct * from BookRegister where book_title =? and major=?";
       	 			pstmt=conn.prepareStatement(sql1);
 					pstmt.setString(1, book_title);
 					pstmt.setString(2, major);
 				}
			else if (bc==false && gc==true && mc == false) {//제목0,전공x,학년0
					sql1 = "select distinct * from BookRegister where book_title =? and major=? ";
	           	 	pstmt=conn.prepareStatement(sql1);
	     			pstmt.setString(1, book_title);
	     			pstmt.setString(2, major);	
				}
			else if (mc == false && bc==true && gc==true){			//전공0,학년x,제목x
					sql1 = "select distinct * from BookRegister where major =?";
	       	 		pstmt=conn.prepareStatement(sql1);
	 				pstmt.setString(1, major);
				}
			else if (mc == false && bc==true && gc==false)	{	//전공0,학년0,제목x
					sql1 = "select distinct * from BookRegister where grade =? and major=? ";
	           	 	pstmt=conn.prepareStatement(sql1);
	     			pstmt.setString(1, grade);
	     			pstmt.setString(2, major);	
				}
			else if (mc == true && bc==true && gc==false) {		//전공x,학년0,제목x											//전공x,학년0,제목x
					sql1 = "select distinct * from BookRegister where grade =? ";
	       	 		pstmt=conn.prepareStatement(sql1);
	 				pstmt.setString(1, grade);
			}
			else {												//전공x,학년x,제목x
				response.sendRedirect("list.jsp");
			}
			
			rs = pstmt.executeQuery();
			
	%>
    <table align=center border=1>
	<tr>
		<td>글번호</td> 
		<td>책이름</td>
		<td>강의명</td>
		<td>가격</td>
		<td>전공/교양</td>		
		<td>학교</td>
		<td>학년</td>
		<td>전공</td>
	</tr>
	<%
	while (rs.next()) {
	%>
	<tr>
		<td><%=rs.getInt("seq")%></td>
		<td><%=rs.getString("book_title")%></td>
		<td><%=rs.getString("subject_name")%></td>
		<td><%=rs.getString("price")%></td>
		<td><%=rs.getString("cclass")%></td>
		<td><%=rs.getString("university")%></td>
		<td><%=rs.getString("major") %></td>
		<td><%=rs.getString("grade") %></td>
	</tr>
	</table>
		<%
		} } catch (Exception e) {e.printStackTrace();} 
		finally {
			try {
				if (rs != null) {rs.close();}
				if (pstmt != null) {pstmt.close();}
				if (conn != null) {conn.close();}
				} 
			catch (Exception e) {e.printStackTrace();}
			}
 	%> 

            </section>
            <aside class="aside"></aside>
            <footer class="footer"></footer>
          </section>      
  </body>
  </html>

	