<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="book.bean.BoardDAO"%>
    
<%
	request.setCharacterEncoding("utf-8");
	String boards= request.getParameter("boards");

	BoardDAO dao = new BoardDAO();
	int seq = dao.deleteBook(boards);
	int check = dao.changeSeq(seq);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<h1>삭제완료</h1>
       <form name="list" target="_blank" action="list_1.jsp"> 
       <div class = "listgo"></div>
       <input type="submit" size="30" value="목록창으로 이동" >
       </form>
</body>
</html>