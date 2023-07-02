<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import = "java.util.List" %>
<%@ page import = "book.bean.BoardDAO" %>
<%@ page import = "book.bean.BookRegister" %>
<!DOCTYPE html>
<html>
   <meta charset="UTF-8"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 

<head><title>목록</title>
<style>
table, th, td {
	border: 1px solid black;
	border-collapse: collapse;
    	text-align: center;
}
table {
	width: 100%;
}
</style>
</head>
<body>
   <section class="section"> 
    <% 
	request.setCharacterEncoding("utf-8");
	String boardt = request.getParameter("boardt");
	String boards = request.getParameter("boards");
	String boardsn = request.getParameter("boardsn");
	String boardp = request.getParameter("boardp");
	String boardc = request.getParameter("boardc");
	String boardm = request.getParameter("boardm");
	String boardg = request.getParameter("boardg");
	String boardu = request.getParameter("boardu");
	String fullpath = "";
	int s = Integer.parseInt(boards);

	Connection conn = null;
	PreparedStatement pstmt=null;
	ResultSet rs = null;
	
	String jdbcUrl="jdbc:mysql://localhost:3306/basicjsp?serverTimezone=Asia/Seoul"; 	 
	String dbId="jspid";
	String dbPass="jsppass";
	String sql1 = "select distinct * from BookRegister where book_title =? ";
	String sql2 = "select distinct * from Scratch where seq =? ";
	String sql3 = "select distinct * from ImageSave where seq =? ";

		try {
			
		    Class.forName("com.mysql.cj.jdbc.Driver");   	 
			conn=DriverManager.getConnection(jdbcUrl,dbId ,dbPass );
       	 	pstmt=conn.prepareStatement(sql1);
            pstmt.setString(1, boardt);
			rs = pstmt.executeQuery();
			
	%>
    <table class="table table-striped" style="text-align:center; border :1px solid #dddddd">
	<tr>
						<th style="background-color : #e9ecef; text-align:center;">번호</th>
						<th style="background-color : #e9ecef; text-align:center;">책이름</th>
						<th style="background-color : #e9ecef; text-align:center;">강의명</th>
						<th style="background-color : #e9ecef; text-align:center;">가격</th>
						<th style="background-color : #e9ecef; text-align:center;">교양/전공</th>
						<th style="background-color : #e9ecef; text-align:center;">학교</th>
						<th style="background-color : #e9ecef; text-align:center;">전공</th>
						<th style="background-color : #e9ecef; text-align:center;">학년</th>
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
	}
	pstmt=conn.prepareStatement(sql2);
    pstmt.setString(1, boards);
	rs = pstmt.executeQuery();
	%>
	<br>
	 <table class="table table-striped" style="text-align:center; border :1px solid #dddddd">
	<tr>
		<th style="background-color : #e9ecef; text-align:center;">글번호</th> 
		<th style="background-color : #e9ecef; text-align:center;">오염점수</th>
		<th style="background-color : #e9ecef; text-align:center;">밑줄여부</th>
		<th style="background-color : #e9ecef; text-align:center;">밑줄비율</th>
		<th style="background-color : #e9ecef; text-align:center;">필기</th>		
		<th style="background-color : #e9ecef; text-align:center;">필기점수</th>
		<th style="background-color : #e9ecef; text-align:center;">이름표시여부</th>
		<th style="background-color : #e9ecef; text-align:center;">표지훼손여부</th>
		<th style="background-color : #e9ecef; text-align:center;">페이지훼손여부</th>
		<th style="background-color : #e9ecef; text-align:center;">훼손된 페이지</th>
	</tr>
	<%
	while (rs.next()) {
	%>
	<tr>
		<td><%=rs.getInt("seq")%></td>
		<td><%=rs.getString("score")%></td>
		<td><%=rs.getString("underline")%></td>
		<td><%=rs.getString("underlinec")%></td>
		<td><%=rs.getString("note")%></td>
		<td><%=rs.getString("notec")%></td>
		<td><%=rs.getString("namec")%></td>
		<td><%=rs.getString("cover")%></td>
		<td><%=rs.getString("pagec") %></td>
		<td><%=rs.getString("pagen") %></td>
	</tr>
	</table>
	<%
		}
	pstmt=conn.prepareStatement(sql3);
    pstmt.setString(1, boards);
	rs = pstmt.executeQuery();
	%>
	<table class="table table-striped" style="text-align:center; border :1px solid #dddddd">
	<tr>
		<th style="background-color : #e9ecef; text-align:center;">글번호</th> 
		<th style="background-color : #e9ecef; text-align:center;">파일명</th>
		<th style="background-color : #e9ecef; text-align:center;">이미지</th>
	</tr>
	<%
	while (rs.next()) {
	%>
		<tr>
		<td><%=rs.getInt("seq")%></td>
		<td><%=rs.getString("filename")%></td>
		<!-- refresh 필요 -->
		<td><img  width="140px" height="100px" src="<%=rs.getString("otherpath")%>"></td>		
	</tr>
	</table>
	<%
	}
	%>
	<%
	} catch (Exception e) {e.printStackTrace();} 
		finally {
			try {
				if (rs != null) {rs.close();}
				if (pstmt != null) {pstmt.close();}
				if (conn != null) {conn.close();}
				} 
			catch (Exception e) {e.printStackTrace();}
			}
 	%> 
 	<br><br>
 	<input type="button" value="글수정" OnClick="window.location='updateBook_1.jsp?boardt=<%=boardt%>&&boards=<%=boards%>&&boardsn=<%=boardsn%>&&boardc=<%=boardc%>&&boardp=<%=boardp%>&&boardu = <%=boardu%> &&boardm=<%=boardm%>&&boardg=<%=boardg%>'">
 	<input type="button" value="오염도수정" OnClick="window.location='updateScratch.jsp?boards=<%=boards%>'">
	<br><br>
	<input type="button" value="글삭제" OnClick="window.location='delete.jsp?&boards=<%=boards%>'">
         </section>
      	<aside class="aside"></aside>
      	<footer class="footer"></footer>
      	
</body>
</html>
