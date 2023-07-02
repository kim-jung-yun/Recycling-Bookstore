<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
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
            <h1>로그인 완료 </h1>
      
        <form name="list" target="_blank" action="list_1.jsp"> 
            <div class = "listgo"></div>
            <input type="submit" size="30" value="목록창" >
        </form>
    
        <form name="sell" target="_blank"  action="register_1.jsp"> 
            <div class = "sellgo"></div>
           <input type="submit" size="30" value="판매글 등록" >
        </form>
    
     </section>
     <aside class="aside"></aside>
                <footer class="footer"></footer>
    </body>
</html>