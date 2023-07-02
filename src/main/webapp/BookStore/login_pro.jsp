<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="book.bean.MemberDAO"%>
<!DOCTYPE html>
<html>
<style>
html, body { margin: 0; padding: 0; height: 100%; }
header { width: 100%; height: 15%; }
nav { width: 20%; height: 70%; float: left; }
section { width: 60%; height: 70%; float: left; background-color: #ede5d0; text-align: center;}
aside { width: 20%; height: 70%; float: left; }
footer { width: 100%; height: 15%;  }
</style>
<head>
<meta charset="UTF-8">
<title>회원가입 완료</title>
</head>
<body>
 	<header class="header"></header> 
    <nav class="nav">  </nav>
    <section class="section"><p>
 	<% request.setCharacterEncoding("utf-8");

	// 로그인 화면에 입력된 아이디와 비밀번호를 가져온다
	String email= request.getParameter("email");
	String passwd = request.getParameter("passwd");

	// DB에서 아이디, 비밀번호 확인
	MemberDAO dao = MemberDAO.getInstance();
	int check = dao.loginCheck(email, passwd);
	String name = dao.loginNowInsert(email);
	

	// URL 및 로그인관련 전달 메시지
	String msg = "";

	if(check == 1)    // 로그인 성공
	{ 
    	// 세션에 현재 아이디 세팅
   		 session.setAttribute("sessionID", email);
   		 msg = "login_finish.jsp";
	}
	
	else    // 아이디가 틀릴경우
	{
    	msg = "login_1.jsp?msg=-1";
		%>
		<script>
			alert("아이디 혹은 비밀번호를 다시 확인해 주세요.")
		</script>
		<% 
	}
 
	// sendRedirect(String URL) : 해당 URL로 이동
	// URL뒤에 get방식 처럼 데이터를 전달가능
	response.sendRedirect(msg);
 	%> 

	<table>
	<tr>
        <td><input type="button" value="로그인" onclick="showPopup()"> </td>
    </tr>
	</table>
	</section>
</body>
</html>