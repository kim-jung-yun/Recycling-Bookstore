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
<style>
	#wrap{
		width:530px;
		margin-left:auto;
		margin-right:auto;
		text-align:center;
	}
	
	table{
		border:3px solid #e9ecef
	}
	td {
		border : 1px solid #e9ecef
	}
	#title{
		background-color : #e9ecef
	}
</style>
<html>
<head>
<meta charset="UTF-8">
<title>판매글 수정</title>
</head>
<body>
	<div id= "wrap">
	<br><br>
		<b><font size="6" color="black">판매글 수정</font></b>
		<br><br><br>
		<form method="get" action="updateBook_pro.jsp"> 
		<table>
		<tr>
					<td id="title">글번호</td>
					<td>
						<input type="text" name="seq" id ="seq" disabled>
                       <td> <div style="border:5px;display:none;"><input type="text" name="seq" id ="seq2"><td>
                    </td>
                </tr>
                <tr>
				<td id = "title">책제목  </td><td><input type="text" name="book_title" id ="book_title" ></td>
			</tr>
			
		<tr>
				<td id = "title">강의명  </td><td><input type="text"  name="subject_name" id="subject_name"></td>
			</tr>
			<tr>
			<td id = "title">교양/전공 </td><td><input type="text" list="cclass" name="cclass" id="cclass">
				<datalist id="cclass">
                       <option value="교양" name="cclass">
                       <option value="전공" name="cclass">
                 </datalist>
			</td>
			</tr>
			
			<tr>
				<td id = "title">책 가격 </td><td><input type="text" name="price" id="price"></td>
			</tr>
			
			<tr>
				<td id = "title">학교 </td><td><input type="text" name="university" id="university"></td>
			</tr>
			
			<tr>
				<td id = "title">학과 </td><td><input type="text" name="major" id="major"></td>
			</tr>
			<tr>
				<td id = "title">이메일 </td><td><input type="text" name="email" id="email"></td>
			</tr>
			<tr>
				<td id = "title">학년 </td><td>
				<input type="text" list="grade" name="grade" id="grade">
				<datalist id="grade">
                       <option value="1" name="grade">
                       <option value="2" name="grade">
                       <option value="3" name="grade">
                       <option value="4" name="grade">
                 </datalist>

				</td>
			</tr>
		</table>
		<input type="button" value="내 정보 불러오기">
		<input type="submit" value="수정완료">
		
		</form>
		
</div>
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
</body>
</html>