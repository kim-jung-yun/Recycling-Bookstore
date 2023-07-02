<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="book.bean.BoardDAO"%>
<%@ page import="book.bean.BoardImage"%>
<%@ page import="book.bean.Scratch"%>

<jsp:useBean id="scratch" class="book.bean.Scratch"/>
<jsp:setProperty name="scratch" property="*"/>

<% 
	request.setCharacterEncoding("utf-8");
	String cb1 = request.getParameter("cb1");
	String cb2 = request.getParameter("cb2");
	String cb3 = request.getParameter("cb3");
	String cb4 = request.getParameter("cb4");
	String cb5 = request.getParameter("cb5");

	BoardDAO dao2 = new BoardDAO();
	dao2.insertScratch(scratch,cb1,cb2,cb3,cb4,cb5);
%>
<!DOCTYPE html>
<html>
<head> 
</head>
 <style>html, body { margin: 0; padding: 0; height: 100%; text-align: center; }
    header { width: 100%; height: 15%; }
    nav { width: 20%; height: 70%; float: left; }
    section { width: 60%; height: 70%; float: left; }
    aside { width: 20%; height: 70%; float: left; }
    footer { width: 100%; height: 15%; ; }</style>
    <body>
    <header class="header"></header> 
    <nav class="nav"></nav>
    <section class="section"><p>

   <h1>오염도 등록 완료</h1>
       <form name="list" target="_blank" action="list_1.jsp"> 
            <div class = "listgo"></div>
    	 <input type="submit" size="30" value="목록창으로 이동" >
    </section>
    <aside class="aside"></aside>
    <footer class="footer"></footer>
</body>
</html>