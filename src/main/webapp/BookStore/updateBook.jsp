<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>

<%  request.setCharacterEncoding("utf-8"); 
	String boardt = request.getParameter("boardt");
	String boards = request.getParameter("boards");
	String boardsn = request.getParameter("boardsn");
	String boardp = request.getParameter("boardp");
	String boardc = request.getParameter("boardc");
	String boardm = request.getParameter("boardm");
	String boardg = request.getParameter("boardg");
	String boardu = request.getParameter("boardu");
%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>판매글 수정</title>
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
        <legend><h1>판매글 수정</h1></legend>
        <form method="get" action="updateBook_pro.jsp"> 
        <table style="text-align: center; border: 1px solid #dddddd">
        	<tr>
        		<td>글번호 :</td><td><input type="text" name="seq" id ="seq" disabled> </td>
        		<td><div style="border:5px;display:none;"><input type="text" name="seq" id ="seq2"></div><td>
        	</tr>
			<tr>
				<td>책제목 : </td><td><input type="text" name="book_title" id ="book_title" ></td>
			</tr>
			<tr>
				<td>강의명 : </td><td><input type="text"  name="subject_name" id="subject_name"></td>
			</tr>
			<tr>
			<td>교양/전공 :</td><td><input type="text" list="cclass" name="cclass" id="cclass">
				<datalist id="cclass">
                       <option value="교양" name="cclass">
                       <option value="전공" name="cclass">
                 </datalist>
			</td>
			</tr>
			
			<tr>
				<td>책 가격 :</td><td><input type="text" name="price" id="price"></td>
			</tr>
			
			<tr>
				<td>학교 :</td><td><input type="text" name="university" id="university"></td>
			</tr>
			
			<tr>
				<td>학과 :</td><td><input type="text" name="major" id="major"></td>
			</tr>
			<tr>
				<td>이메일 :</td><td><input type="text" name="email" id="email"></td>
			</tr>
			<tr>
				<td>학년 :</td><td>
				<input type="text" list="grade" name="grade" id="grade">
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
		<input type="submit" value="수정완료">
        </form>
	
 	<script>
		document.getElementById('seq').value = '<%=boards%>';
		document.getElementById('seq2').value = '<%=boards%>';
 		document.getElementById('book_title').value = '<%=boardt%>';
 		document.getElementById('subject').value = '<%=boardsn%>';
 		document.getElementById('cclass').value = '<%=boardc%>';
 		document.getElementById('price').value = '<%=boardp%>';
 		document.getElementById('grade').value = '<%=boardg%>';
 		document.getElementById('major').value = '<%=boardm%>';
 		document.getElementById('university').value = '<%=boardu%>';
 	</script>
 </section>	 
</body>
</html>