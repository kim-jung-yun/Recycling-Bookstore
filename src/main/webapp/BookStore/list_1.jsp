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
<% 
	ArrayList<Board> feeds = (new BoardDAO()).getList();
	request.setCharacterEncoding("utf-8");
	MemberDAO dao = MemberDAO.getInstance();
	String name = dao.Login();
 %>
 
<head><title>목록</title>
<style>
	fieldset {
		text-align: center;
		background-color : #e9ecef;
	}
	table, th, td {
	border: 1px solid black;
	border-collapse: collapse;
    	text-align: center;
}
table {
	width: 100%;
}
footer{
  width: 100%;  
}
.wrapper{
       
        margin:auto;
    }

</style>
</head>
<body>
	<a href="logout.jsp" target="_blank" id="anchor" style="float: right;">로그아웃</a><br>
	<a href="mypage.jsp" target="_blank" id="anchor" style="float: right;"><%=name %>님</a><br>
	<h1>판매목록<br>
	<form method="get" action="list_result.jsp"> 
    	<fieldset>
        <legend ><h1>책 검색</h1></legend>
        
            <tr>
                <td><font size = "4">
                책이름 :</font></td>
                <td><input type="text" size="10" name="book_title"></td>
                <td></td>

            <tr>
                <td><font size = "4">
                학과 :</font></td>
                <td><input type="text" size="10" name="major"></td>
                    <td></td>
            <tr>  
                <td><font size = "4">
                학년 :</font></td>
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
        
                <div class="container">
				<div class="row">
				<table class="table table-striped" style="text-align:center; border :1px solid #dddddd" > 
				<thead>
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
				</thead>
               <% 
               	for(int i=0; i<feeds.size(); i++) { 
               
               %>
			<tr>
				<td><%=feeds.get(i).getSeq() %></td>
				<td><a href="detail.jsp?boards=<%=feeds.get(i).getSeq() %>
				&&boardt=<%=feeds.get(i).getBook_title() %>
				&&boardsn=<%=feeds.get(i).getSubject_name() %>
				&&boardp=<%=feeds.get(i).getPrice() %>
				&&boardc=<%=feeds.get(i).getCclass() %>
				&&boardu=<%=feeds.get(i).getUniversity() %>
				&&boardm=<%=feeds.get(i).getMajor() %>
				&&boardg=<%=feeds.get(i).getGrade() %>">
				<%=feeds.get(i).getBook_title() %></a></td>
				<td><%=feeds.get(i).getSubject_name() %></td>
				<td><%=feeds.get(i).getPrice() %></td>
				<td><%=feeds.get(i).getCclass() %></td>
				<td><%=feeds.get(i).getUniversity() %></td>
				<td><%=feeds.get(i).getMajor() %></td>
				<td><%=feeds.get(i).getGrade() %></td>		
			</tr>
			<% } %>
			</table> 
			</div>
			</div>
            <div id="wrapper">
            <input type="button" value="글쓰기" OnClick="window.location='register_1.jsp'"> 
			<form method="get" action="list_result.jsp"> 
            </div>
            
            
  </body>
  </html>