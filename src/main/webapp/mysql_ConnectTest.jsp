<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>MySQL ���� ����̹� �׽�Ʈ</title>
</head>
<body>
	<h1>MySQL ���� ����̹� �׽�Ʈ</h1>
	<%
		String jdbcUrl="jdbc:mysql://localhost:3306/basicjsp?serverTimezone=Asia/Seoul"; 	 
    	String dbId="jspid";
    	String dbPass="jsppass";
		
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection = DriverManager.getConnection(jdbcUrl, dbId, dbPass);
			out.println("MySQL ���� ����");
		}
		catch (Exception ex)
		{
			out.println("���� �����Դϴ�. ���� �޽��� : " + ex.getMessage());
		}
	%>
</body>
</html>