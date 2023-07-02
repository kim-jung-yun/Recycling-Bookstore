<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 화면</title>
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
	<div id= "wrap">
		<br><br>
		<b><font size="6" color="black">회원가입</font></b>
		<br><br><br>
		
		<form method="post" action="join_pro.jsp">
			<table>
				<tr>
					<td id="title" width="200">아이디(학교이메일)</td>
					<td width="300">
						<input type="text" name="email" maxlength = "20">
                    </td>
                    <td id="title"><input type = "button" value = "중복확인" onclick = "idCheck()" maxlength = "20">
                    </td>
                </tr>
                <tr>
                	<td id = "title">비밀번호</td>
                	<td>
                		<input type="password" name="passwd">
                	</td>
                </tr>
                <tr>
                	<td id = "title">학교이름</td>	
                	<td>
                		<input type="text" name="university">
                	</td>
                </tr>
                <tr>
                	<td id = "title">학과</td>	
                	<td>
                		<input type="text" name="major">
                	</td>
                </tr>
                <tr>
                	<td id = "title">학년</td>	
                	<td>
                		<input type="text" list="grade"><br>
                		<datalist id="grade">
                              <option value="1" name="grade_1">
                              <option value="2" name="grade_2">
                              <option value="3" name="grade_3">
                              <option value="4" name="grade_4">
                           </datalist>
                	</td>
                </tr>
                <tr>
                	<td id = "title">이름</td>	
                	<td>
                		<input type="text" name="name">
                	</td>
                </tr>
                <tr>
                	<td id = "title">전화번호</td>	
                	<td>
                		<input type="text" name="number">
                	</td>
                </tr>
                <tr>
                <td colspan="3">
                       <input type="submit" value="회원가입 완료"></td>
                    </tr>
			</table>
		</form>
	</div>
</body>
<script>
        function idCheck(){
        	window.open("idCheckForm.jsp");
        }
        </script>
</html>