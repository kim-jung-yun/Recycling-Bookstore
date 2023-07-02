<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<style>
	html, body { margin: 0; padding: 0; height: 100%; }
	header { width: 100%; height: 15%; }
	nav { width: 20%; height: 70%; float: left; }
	section { width: 60%; height: 70%; float: left; text-align: center;}
  </style>
 
 
 <script type="text/javascript">
 function ok() {
		alert("인증완료")
		document.location.href="numCheck.html"	//확인 버튼 후 페이지이동
	}
 </script>
			
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" charset="EUC-KR" />
<title>대학 인증</title>
</head>
<body>
	<header class="header"></header> 
		<nav class="nav">  </nav>
		<section class="section"><p>     
				 <fieldset>
					<legend><h1>대학 인증</h1></legend>
					<table id="tb">
						<tr>
						<form method="post" action="emailSend.jsp">
							<td> 학교메일(ID) :</td>
								<td><input type="text" size="15" name="email"></td>	
								<td><input type="submit" value="인증번호 받기"> </td>	
						</tr>
						</form>
						<br><br><br>

						<tr>
						<!-- <form method="post" action="emailCheck.jsp"> -->
						<form>
								<td> 인증번호 :</td>
								<td><input type="text" size="15" id="number"></td>
								<!-- <td><input type="submit" value="인증번호 확인"> </td> -->
								<!-- <td><a href="emailCheck.jsp" target="_self">인증 완료</a></td> -->
								<td><input type="button" value="인증번호 확인" onclick="ok();" ></td> 							<tr>
								<td></td>
							<tr>					
						<tr>
				</table>
				</form>
				</fieldset>
				</section>
</body>
</html>