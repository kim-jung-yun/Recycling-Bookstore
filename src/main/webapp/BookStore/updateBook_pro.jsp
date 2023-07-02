<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="book.bean.BoardDAO"%>

<%@ page import="book.bean.BookRegister"%>
<% request.setCharacterEncoding("utf-8");
String boards = request.getParameter("boards");

%>

<!DOCTYPE html>
<html>
<head>
 <style>
     html, body { margin: 0; padding: 0; background-color:#ede5d0}
   </style>
<jsp:useBean id="bookregister" class="book.bean.BookRegister"/>
<jsp:setProperty name="bookregister" property="*"/>
<% 
	BoardDAO dao5 = new BoardDAO();
	dao5.updatebook(bookregister);
	
	//String book_title = request.getParameter("book_title");
	//String seq = request.getParameter("seq");
	//String subject_name = request.getParameter("subject_name");
	//String price = request.getParameter("price");
	//String cclass = request.getParameter("cclass");
	//String major = request.getParameter("major");
	//String grade = request.getParameter("grade");
	//String university = request.getParameter("university");
	
	//BoardDAO dao6 = new BoardDAO();
	//dao6.updatebook_1(seq, book_title, subject_name, price, cclass, university, major, grade);
	
 %>
</head>
<body>
	<section class="section"><p>
	</section>
   <h1>'<jsp:getProperty name="bookregister" property="book_title" />'의 수정이 완료되었습니다.</h1>
   <form name="list" target="_blank" action="list.jsp"> 
   <div class = "listgo"></div>
   <input type="submit" size="30" value="목록창으로 이동" >
   </form>
</body>
</html>