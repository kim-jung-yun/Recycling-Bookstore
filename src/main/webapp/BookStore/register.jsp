<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<% request.setCharacterEncoding("utf-8"); %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>판매글 등록</title>
<style> 
	html, body { margin: 0; padding: 0; height: 100%; }
	header { width: 100%; height: 15%; }
	nav { width: 20%; height: 70%; float: left; }
	section { width: 60%; height: 70%; float: left; background-color: #ede5d0; text-align: center;}
	aside { width: 20%; height: 70%; float: left; }
	footer { width: 100%; height: 15%; ; }
	table {text-align : left;}
</style>
</head>
<body>
<header class="header"></header> 
<nav class="nav">  </nav>
<section class="section"><p>
 		<fieldset>
        <legend><h1>판매글 작성</h1></legend>
        <form method="post" action="register_pro.jsp"> 
        <table style="text-align: center; border: 1px solid #dddddd">
			<tr>
				<td>책제목 : </td><td><input type="text" placeholder="책제목" name="book_title"></td>
			</tr>
			<tr>
				<td>강의명 : </td><td><input type="text" placeholder="강의명" name="subject_name"></td>
			</tr>
			<tr>
			<td>교양/전공 :</td><td><input type="text" list="cclass" name="cclass">
				<datalist id="cclass">
                       <option value="교양" name="cclass">
                       <option value="전공" name="cclass">
                 </datalist>
			</td>
			</tr>
			
			<tr>
				<td>책 가격 :</td><td><input type="text" name="price"></td>
			</tr>
			
			<tr>
				<td>학교 :</td><td><input type="text" name="university"></td>
			</tr>
			
			<tr>
				<td>학과 :</td><td><input type="text" name="major"></td>
			</tr>
			<tr>
				<td>이메일 :</td><td><input type="text" name="email"></td>
			</tr>
			<tr>
				<td>학년 :</td><td>
				<input type="text" list="grade" name="grade">
				<datalist id="grade">
                       <option value="1" name="grade">
                       <option value="2" name="grade">
                       <option value="3" name="grade">
                       <option value="4" name="grade">
                 </datalist>

				</td>
			</tr>
			</table  style="text-align: center; border: 1px solid #dddddd">
			<input type="button" value="내 정보 불러오기">
			<input type="submit" value="작성완료">
        </form>
        <form name="sell" target="_blank"  action="scratch.jsp"> 
           <div class = "sellgo"></div>
           <input type="submit" size="30" value="책 오염도 등록하기" >
       	</form>
		</section>
		</fieldset>

</body>
</html>