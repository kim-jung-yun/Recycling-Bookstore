<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="book.bean.BoardDAO"%>

<%@ page import="book.bean.Scratch"%>
<% request.setCharacterEncoding("utf-8");%>

<!DOCTYPE html>
<html>
<head>
 <style>
     html, body { margin: 0; padding: 0; background-color:#ede5d0}
   </style>
<jsp:useBean id="scratch" class="book.bean.Scratch"/>
<jsp:setProperty name="scratch" property="*"/>
<% 
	
	String seq = request.getParameter("boards");
	String cb1 = request.getParameter("cb1");
	String cb2 = request.getParameter("cb2");
	String cb3 = request.getParameter("cb3");
	String cb4 = request.getParameter("cb4");
	String cb5 = request.getParameter("cb5");
	
	BoardDAO dao7 = new BoardDAO();
	dao7.updateScratch(scratch,seq,cb1,cb2,cb3,cb4,cb5);
	
 %>
</head>
<body>
	<section class="section"><p>
	</section>
   <h1>오염도 수정이 완료되었습니다.</h1>
   <form name="list" target="_blank" action="list.jsp"> 
   <div class = "listgo"></div>
   <input type="submit" size="30" value="목록창으로 이동" >
   </form>
</body>
</html>