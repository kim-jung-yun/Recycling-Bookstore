<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="book.bean.BoardDAO"%>

<%@ page import="book.bean.BookRegister"%>
<% request.setCharacterEncoding("utf-8");%>
<jsp:useBean id="bookregister" class="book.bean.BookRegister"/>
<jsp:setProperty name="bookregister" property="*"/>
<% 
	BoardDAO dao1 = new BoardDAO();
	int seq = dao1.insertBook(bookregister);
 %>

<!DOCTYPE html>
<html>
<head> </head>
 <style>html, body { margin: 0; padding: 0; height: 100%; text-align: center; }
    header { width: 100%; height: 15%; }
    nav { width: 20%; height: 70%; float: left; }
    section { width: 60%; height: 70%; float: left; }
    aside { width: 20%; height: 70%; float: left; }
    footer { width: 100%; height: 15%; ; }
 </style>
    <body><header class="header"></header> 
        <nav class="nav"></nav>
        <section class="section"><p>
   <h1>'<jsp:getProperty name="bookregister" property="book_title" />'의 판매등록이 완료되었습니다.</h1>
   <form name="list" target="_blank" action="list_1.jsp"> 
            <div class = "listgo"></div>
    	 <input type="submit" size="30" value="목록창으로 이동" >
   </form>
   <form method="get" action="scratch.jsp">
   		<div style="border:5px;display:none;"><input type="text" name="seq" value=<%=seq %>></div>
    	<input type="submit" value="오염도등록" target="_self">
   </form> 
     </section>
     <aside class="aside"></aside>
     <footer class="footer"></footer>
</body>
</html>