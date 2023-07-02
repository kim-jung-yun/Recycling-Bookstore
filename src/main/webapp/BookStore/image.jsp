<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ page import="java.sql.*" %> 

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	 <form action="image_pro.jsp" method="post" enctype="multipart/form-data">
	 	<fieldset>
			<legend>파일 업로드</legend>
			<p>작성자 : <input type="text" name="userName"></p>
			<p>파일명 : <input type="file" name="file"></p>
			<p><input type="submit" value="upload"></p>	 	
	 	</fieldset>
	 </form>

	<form method="post" action="image_pro.jsp" enctype="multipart/form-data"  target="iframe2">
		<table>
			<tr>
                <td colspan="5"><strong>이미지파일 첨부</strong></td></tr>
				<td colspan="5"><input type="file" name="filename1" size=40  onchange="readURL(this);"></td>
				<td colspan="5"><input type="submit" value="첨부완료"></td>
				<td><img id="preview" width="100"/></td>
				<td><div style="border:5px;display:none;"><input type="text" name="seq"></div><td>	
			</tr>
		</table>
	</form>
	
	<script>
	function readURL(input) {
		  if (input.files && input.files[0]) {
		    var reader = new FileReader();
		    reader.onload = function(e) {
		      document.getElementById('preview').src = e.target.result;
		    };
		    reader.readAsDataURL(input.files[0]);
		  } else {
		    document.getElementById('preview').src = "";
		  }
		}
	</script>
	
	<br><hr><br>
	<fieldset>
		<legend>파일 다운로드</legend>
		<table border="1">
			<tr >
				<th>이미지</th>
				<th>이미지 설명</th>
				<th>다운로드 링크</th>
			</tr>
			<tr>
				<td><img src="../img/404.PNG" alt="404이미지" width="140px" height="100px"></td>
				<td align="center" width="200">404에러 이미지</td>
				<td align="center" width="200"><a href="fileEx01_download.jsp?fileName=404.PNG">다운로드</a></td>
			</tr>	
			<tr>
				<td><img src="../img/500.PNG" alt="500이미지" width="140px" height="100px"></td>
				<td align="center" width="200">500에러 이미지</td>
				<td align="center" width="200"><a href="fileEx01_download.jsp?fileName=500.PNG">다운로드</a></td>
			</tr>	
		</table>
	</fieldset>
</body>
</html>