<%@ page contentType="text/html; charset=UTF-8" %> 
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="book.bean.*" %>

<jsp:useBean id="memberDAO" class="book.bean.MemberDAO" scope="page" />
<jsp:useBean id="memberRegister" class="book.bean.MemberRegister" scope="page" />

 
<% request.setCharacterEncoding("UTF-8"); %>
 
<% 
	MemberDAO dao = MemberDAO.getInstance();
%>