<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.io.*"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="java.util.Enumeration"%>
<%@page import = "book.bean.*" %>
<%@page import="java.nio.file.*"%>


<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">
<link rel="icon" href="/favicon.ico" type="image/x-icon">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<% 
		request.setCharacterEncoding("utf-8");
		String location = "C:\\project\\StudyBasicJSP\\src\\main\\webapp\\BookStore\\img";
		String location1 = "C:\\Users\\user\\git\\12_jsp_basic\\12_jsp_basic\\WebContent\\chapter06_file\\file_repo";
		String seq = request.getParameter("boards");

		int maxSize = 1024 * 1024 * 5; // 키로바이트 * 메가바이트 * 기가바이트   
		 
		MultipartRequest multi = new MultipartRequest(request,
							 						  location,
													  maxSize,
													  "utf-8",
													  new DefaultFileRenamePolicy());

		String userName = multi.getParameter("userName");
		
		Enumeration<?> files = multi.getFileNames(); // <input type="file">인 모든 파라메타를 반환
				
		String element = "";
		String filesystemName = "";
		String originalFileName = "";
		String contentType = "";
		long length = 0;		
				
		if (files.hasMoreElements()) { 
			
			element = (String)files.nextElement(); 
			
			filesystemName 			= multi.getFilesystemName(element); 
			originalFileName 		= multi.getOriginalFileName(element); 
			contentType 			= multi.getContentType(element);	
			length 					= multi.getFile(element).length(); 
			
		}

		String newname = filesystemName.trim();
		String myfolder = "img";
		String myname = seq;
		String mytype = "";

		if(contentType.indexOf("png") > -1)
			mytype="png";
		else if (contentType.indexOf("bmp") > -1)
			mytype="bmp";
		else if (contentType.indexOf("jpg") > -1)
			mytype="jpg";
		else if (contentType.indexOf("jpeg") > -1)
			mytype="jpeg";
		
		String myimg = myfolder + "/" + myname + "." + mytype;
		
		String fullpath = location + "\\" + filesystemName; 
		String fullpath2 = location + "\\" + myname + "." + mytype; 
		
        Path file = Paths.get(fullpath);        
        Path newFile = Paths.get(fullpath2);         
        try {             
        	Path newFilePath = Files.move(file, newFile);             
        	System.out.println(newFilePath);         
        	} catch (IOException e) {            
        		e.printStackTrace();        
        	}
        
    	BoardImage dao = new BoardImage();
    	dao.insertImage(seq,myname + "." + mytype,fullpath2, myimg);
    	
	%>
	
	<p>파라메타 이름 : <%=element%></p>
	<p>서버에 업로드된 파일 이름 : <%=filesystemName%></p>
	<p>유저가 업로드한 파일 이름 : <%=originalFileName%></p>
	<p>파일 타입 : <%=contentType%></p>
	<p>파일 크기 : <%=length%></p>
	<img width="200", height="100" src="<%=myimg %>">
</body>
</html>
