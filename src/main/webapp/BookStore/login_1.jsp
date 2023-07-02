<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="login.css" rel="stylesheet" type="text/css">
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>
<img src="home.png" width="50" height="50" onClick="location.href='list_1.jsp'">
<div id= "wrap" class = "wrap">
<header class ="header"role = "banner">
<div class="header-inner">
<a href="list_1.jsp" class = "logo">
<h1 class = "blind"> 북스토어 </h1>
</a>
</div>
</header>
<div  id = "container" class = "container">
<div class = "content">
	<div class = "login_wrap">
		<form id = "Login" name = "Login" target="_top"	autocomplete = "off" method="get" action="login_pro.jsp">
		<ul class = "panel_wrap">
			<li class = "panel_item" style = "display: block;">
				<div class = "panel_inner" role = "tabpanel" aria-controls = "loinid">
					<div class = "id_pw_wrap">
						<div class = "input_row" id="id_line">
						<div class =  "iconcell" id ="id_cell">
							<span class = "icon_id">
								<span class = "blind">이메일</span>
							</span>
						</div>
						<form action="login_pro.jsp">
						<input type="text" id = "id" maxlength= "50" class = "input_text"
							name="email" title = "이메일" placeholder="이메일">
						</div>
						<div class ="input_row" id = "pw_line">
						<div class =  "iconcell" id ="pw_cell">
							<span class = "icon_pw">
								<span class = "blind">비밀번호</span>
							</span>
						</div>
						<input type="password" value="" id = "pw" title = "비밀번호" 
						class = "input_text" maxlength ="50" name="passwd" placeholder="비밀번호">
						</div>
					</div>
				<div class = "btn_login_wrap">
					<input type="submit">
					<button type="submit" class = "btn_login" id = "log.login">
						<span class ="bnt_login">로그인</span>
					</button>
					<!-- 회원가입 창 만들기 -->
	<ul class = "find_wrap" id = "find_wrap">
		<li>
		<a target ="_blank" href="join_1.jsp" class = "find_text">회원가입</a>
		</li>
	</ul>
				</div>	
				</div>
			</li>
		</ul>
		</form>
	</div>
</div>
</div>
</body>
</html>