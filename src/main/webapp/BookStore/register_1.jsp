<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import = "book.bean.*" %>

<% request.setCharacterEncoding("utf-8"); %> 
<%
	MemberDAO dao = MemberDAO.getInstance();	
	String info[] = new String[4];
	info = dao.myInfo();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>판매글 등록</title>
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
</head>
<body>
<script>
	function info(){
		document.getElementById('email').value = '<%=info[0]%>';
		document.getElementById('university').value = '<%=info[1]%>';
		document.getElementById('major').value = '<%=info[2]%>';
		document.getElementByName('grade').value = '<%=info[3]%>';
	}
</script>
	<div id= "wrap">
		<br><br>
		<b><font size="6" color="black">판매글 작성</font></b>
		<br><br><br>
		
		<form method="post" action="register_pro.jsp">
			<table>
				<tr>
					<td id="title"  width="200">책제목</td>
					<td width="400">
						<input type="text" name="book_title" >
                    </td>
                </tr>
                <tr>
                	<td id = "title" width="200">강의명</td>
                	<td>
                		<input type="text" name="subject_name">
                	</td>
                </tr>
                <tr>
                	<td id = "title" width="200">교양/전공</td>	
                	<td>
                		<input type="text" list="cclass" name="cclass">
				<datalist id="cclass">
                       <option value="교양" name="cclass">
                       <option value="전공" name="cclass">
                 </datalist>
                	</td>
                </tr>
                <tr>
                	<td id = "title" width="200">책 가격</td>	
                	<td>
                		<input type="text" name="price">
                	</td>
                </tr>
                <tr>
                	<td id = "title" width="200">학교</td>	
                	<td>
                		<input  type="text" name="university" id="university" >
                	</td>
                </tr>
                <tr>
                	<td id = "title" width="200">학과</td>	
                	<td>
                		<input type="text" name="major" id="major">
                	</td>
                </tr>
                <tr>
                	<td id = "title" width="200">이메일</td>	
                	<td>
                		<input type="text" name="email" id="email">
                	</td>
                </tr>
                <tr>
				<td id = "title" width="200">학년 </td><td>
				<input type="text" list="grade" name="grade">
				<datalist id="grade">
                       <option value="1" name="grade">
                       <option value="2" name="grade">
                       <option value="3" name="grade">
                       <option value="4" name="grade">
                 </datalist>

				</td>
			</tr>
			</table>
			<input type="button" value="내 정보 불러오기" onClick="info()">
			<input type="submit" value="작성완료">
		</form>
	</div>

</body>
</html>