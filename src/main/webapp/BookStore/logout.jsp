<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="book.bean.*"%>
<%
	request.setCharacterEncoding("utf-8");
	MemberDAO dao = MemberDAO.getInstance();
	dao.Logout();
%>
<!DOCTYPE html>
<html>
<head> </head>
 <style>html, body { margin: 0; padding: 0; height: 100%; text-align: center; }
    header { width: 100%; height: 15%; }
    nav { width: 20%; height: 70%; float: left; }
    section { width: 60%; height: 70%; float: left; }
    aside { width: 20%; height: 70%; float: left; }
    footer { width: 100%; height: 15%; ; }</style>
    <body><header class="header"></header> 
        <nav class="nav"></nav>
        <section class="section"><p>
		<h1>로그아웃 완료</h1>
       <form name="list" target="_self" action="list_1.jsp"> 
       <div class = "listgo"></div>
       <input type="submit" size="30" value="목록창으로 이동" >
       </form>
       <input type="button" value="다른 아이디로 로그인" onClick="location.href='login_1.jsp'">
            </section>
     <aside class="aside"></aside>
     <footer class="footer"></footer>
    </body>
</html>
</body>
</html>