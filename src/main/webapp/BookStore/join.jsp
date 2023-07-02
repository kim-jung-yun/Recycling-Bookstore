<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<style>
	html, body { margin: 0; padding: 0; height: 100%; }
	header { width: 100%; height: 15%; }
	nav { width: 20%; height: 70%; float: left; }
	section { width: 60%; height: 70%; float: left; background-color: #ede5d0; text-align: center;}
  </style>
        <title> 회원가입 창 </title>
<body>
	<header class="header"></header> 
    <nav class="nav">  </nav>
    <section class="section"><p>          
        <form method="post" action="join_pro.jsp"> 
			 <fieldset>
                <legend><h1>회원가입</h1></legend>
                <table>
                    <tr>
                        <td>이름 :</td>
                        <td><input type="text" size="15" name="name"></td>
                    </tr>
                    <tr>
                        <td> 학교메일(ID) :</td>
                            <td><input type="text" size="15" name="email"></td>
                    </tr>
                    <tr>
                        <td> 학교이름 :</td>
                            <td><input type="text" size="15" name="university"></td>
                    </tr>
                    <tr>
                        <td>학과 :</td>
                        <td><input type="text" size="15" name="major"></td>
                    </tr>
                    <tr>
                    	<td>학년 :</td>
                        <td><input type="text" list="grade"><br>
                           <datalist id="grade">
                              <option value="1" name="grade_1">
                              <option value="2" name="grade_2">
                              <option value="3" name="grade_3">
                              <option value="4" name="grade_4">
                           </datalist></td>
                    </tr>
                    <tr>
                         <td>전화번호 :</td>
                         <td><input type="text" size="15" name="number"></td>
                    </tr>
                    <tr>
                         <td>PW :</td> 
                         <td><input type="password"size="15" name="passwd"></td>            
                    </tr>
                    <tr>
                        <td><input type="submit" value="회원가입 완료"></td>
                    </tr>
                    <tr>
                         <td><a href="login.jsp" target="_self">로그인 창으로</a></td>   
					</tr>
			</table>
			</fieldset>
			</form>
            </section>
        </body>
</html>