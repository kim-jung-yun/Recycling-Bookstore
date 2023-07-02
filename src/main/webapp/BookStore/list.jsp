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
 %>
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
            <table border="1" align="center" width="80%" ><h1> 
                <style>
                    th,td{padding:15px;}
                </style>
                <tr>
                    <td>번호</td>
					<td>책이름</td>
					<td>강의명</td>
					<td>가격</td>
					<td>교양/전공</td>
					<td>학교</td>
					<td>전공</td>
					<td>학년</td>
                </tr>
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
            </section>
            <aside class="aside"></aside>
            <footer class="footer"></footer>
          </section>      
  </body>
  </html>

	