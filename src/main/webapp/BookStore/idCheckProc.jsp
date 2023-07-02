<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="book.bean.MemberDAO"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>idCheckProc.jsp</title>
</head>
<body>
	<div style = "text-align:center"></div>
	<h3>아이디 중복 확인 결과</h3>

<%
	MemberDAO dao = MemberDAO.getInstance();
	//1)사용가능한 아이디일경우, 아이디 입력 폼에 넣기위함
	String email = request.getParameter("email");
	int cnt = dao.duplicateEMAIL(email);
	out.println("입력 email : <strong>" + email + "<strong>");
	if(cnt == 0){
		out.println("<p>사용 가능한 이메일입니다.</p>");
		out.println("<a href = 'javascript:apply(\"" + email + "\")'>[적용]</a>");
	
%>
<script>
	function apply(email){
		//2)중복확인을 부모창에 적용
		//부모창 opener
		opener.document.regForm.email.value=email;
		window.close();//창닫기
	}//apply() end
</script>
<%
	}else{
		out.println("<p style = 'color : red'> 해당 이메일은 사용하실 수 없습니다.</p> ");
	}//if() end
%>
<hr>
<a href = "javascript:history.back()">[다시시도]</a>
&nbsp; &nbsp;
<a href = "javascript:window.close">[창닫기]</a>

	
</body>
</html>