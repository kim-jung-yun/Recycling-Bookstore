<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<meta charset="UTF-8"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 

<html>
<head><title>"리사이클링 앱 로그인"</title>
<style>
html, body { margin: 0; padding: 0; height: 100%; }
header { width: 100%; height: 15%; }
nav { width: 20%; height: 70%; float: left; }
section { width: 60%; height: 70%; float: left; text-align: center;}
aside { width: 20%; height: 70%; float: left; }
footer { width: 100%; height: 15%; ; }
</style>

</head>
<body>
<img src="home.png" width="50" height="50" onClick="location.href='list_1.jsp'">

    <script>
        function showPopup(){ //팝업창
            window.open("로그인 완료.html","팝업","width=400, height=300, top=10, left=10");
        }
        
    </script>

<header class="header"> </header> 
<nav class="nav">  </nav>
<section class="section"> <p>
    <img src="book1.png" width="400" height="200"> <p>

        <form name="login" method="get" action="login_pro.jsp"> 
            
            <fieldset>
                <legend><h1>Log In</h1></legend>
                <table>
                    <tr>
                        <td>ID :</td>
                        <td><input type="email" size="15" value="" name="email" placeholder="이메일" aria-placeholder="id@host"></td>
                        <td></td>
                    <tr>
                        <td>PW :</td>
                        <td><input type="password"size="15" value="" name="passwd" placeholder="****"></td>
                        <td></td>
                    </tr>
                </table>
            </form>
            <input type="submit" value="로그인"><br>
      		<a href="join_1.jsp" target="_self">회원가입</a>
</section>
<aside class="aside"></aside>
<footer class="footer"> 4조</footer>
</body>
</html>