<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
String boards = request.getParameter("boards");
%>
<!DOCTYPE html>
<html>
<head>
<style> 
	html, body { margin: 0; padding: 0; height: 100%; }
	header { width: 100%; height: 15%; }
	nav { width: 20%; height: 70%; float: left; }
	section { width: 60%; height: 70%; float: left; background-color: #ede5d0; text-align: center;}
	aside { width: 20%; height: 70%; float: left; }
	footer { width: 100%; height: 15%; ; }
	table {text-align : left;}
	.apple { width:100px; height:20px; font-size:15px;}
	#tdset { width:150px; height:50px; }
</style>
</head>
<body>
<script>
        function showPopup(){ //팝업창
            window.open("ScratchScore.jsp","팝업","width=400, height=300, top=10, left=10");
        }
    </script>
</script>
<iframe id="if" name="param" style="display:none"></iframe>
<iframe id="iframe1" name="iframe1" style="display:none"></iframe>
<header class="header"></header> 
<nav class="nav">  </nav>
<section class="section"><p>
<legend><h1>오염도 수정</h1></legend>
        <form method="post" action="updateScratch_pro.jsp?boards=<%=boards%>"> 
		<table style="text-align: center; border: 1px solid  #dddddd">
                <tr><td colspan="5"><strong>필기 흔적</strong></td></tr>
                <tr>
                	<td id="tdset"><label>밑줄</label>
                	<td id="tdset"><label>있음<input type="radio" class="cb1" name="cb1" value="Y" id="under_check"></label></td>
                	<td id="tdset"><label>없음<input type="radio" class="cb1" name="cb1" value="N" id="under_check"></label></td>
                	<td id="tdset"><label>밑줄비율</label></td>
					<td><input type="text" list="underlinec" class="apple" name="underlinec" id="under">
						<datalist id="underlinec" class="underc">
                       		<option value="0% ~ 10%" name="underlinec">
                       		<option value="11% ~ 30%" name="underlinec">
                       		<option value="31% ~ 50%" name="underlinec">
                       		<option value="50% ~" name="underlinec">                       		
                		 </datalist>
					 </td>                
				</tr>
                <tr>
                     <td><label>필기</label>
                	 <td><label>있음<input type="radio" class="cb2" name="cb2" value="Y" id="Y"></label></td>                     
                	 <td><label>없음<input type="radio" class="cb2" name="cb2" value="N" id="N"></label></td>
                	 <td><label>필기비율</label></td>
                	 <td><input type="text" list="notec" name="notec" class="apple" id="note">
						<datalist id="notec">
                       		<option value="0% ~ 10%" name="notec">
                       		<option value="11% ~ 30%" name="notec">
                       		<option value="31% ~ 50%" name="notec">
                       		<option value="50% ~" name="notec">                       		
                		 </datalist>
					 </td>
                </tr>
               
                <tr><td><br></td><td><br></td>
                <tr>
                    <td colspan="5"><strong>훼손 범위</strong></td></tr>
                <tr> 		
					 <td><label>이름표시</label>
                	 <td><label>있음<input type="radio" class="cb3" name="cb3" value="Y"></label></td>                     
                	 <td><label>없음<input type="radio" class="cb3" name="cb3" value="N"></label></td>                    
                </tr>
                <tr> 		
					 <td><label>겉표지 훼손</label>
                	 <td><label>있음<input type="radio" class="cb4" name="cb4" value="Y"></label></td>                     
                	 <td><label>없음<input type="radio" class="cb4" name="cb4" value="N"></label></td>                    
                </tr>   
                <tr>
                     <td><label>페이지 훼손</label>
                	 <td><label>있음<input type="radio" class="cb5" name="cb5" value="Y"></label></td>                     
                	 <td><label>없음<input type="radio" class="cb5" name="cb5" value="N"></label></td>
                	 <td><label>훼손된 페이지</label></td>
                	 <td><input type="text" list="pagen" name="pagen" class="apple" id ="page">
						<datalist id="pagen">
                       		<option value="1 page ~ 3 page" name="underlinec">
                       		<option value="4 page ~ 5 page" name="underlinec">
                       		<option value="8 page ~ 12 page" name="underlinec">
                       		<option value="11 page ~" name="underlinec">                       		
                		 </datalist>
					 </td>    
                </tr>
                <br>
                <tr>
                <script>
                function radio() {
	                var check1;	check1 = "Y";
	                var check2;	check2 = "0% ~ 10%";
	                var check3;	check3 = "11% ~ 30%";
	                var check4;	check4 = "31% ~ 50%";
	                var check8; check8 = "50% ~";
	                
	                var check5;	check5 = "1 page ~ 3 page";
	                var check6;	check6 = "4 page ~ 7 page";
	                var check7;	check7 = "8 page ~ 12 page";
	                var check9;	check9 = "11 page ~";
	             
	                var sum;	sum=0;
                	var cb1c = document.querySelector('.cb1:checked').value;
                	if(cb1c == check1)	{sum+=10;}
                	else	{sum += 0;}
                	var cb2c = document.querySelector('.cb2:checked').value;
                	if(cb2c == check1)	{sum+=10;}
                	else	{sum += 0;}
                	var cb3c = document.querySelector('.cb3:checked').value;
                	if(cb3c == check1)	{sum+=10;}
                	else	{sum += 0;}
                	var cb4c = document.querySelector('.cb4:checked').value;
                	if(cb4c == check1)	{sum+=10;}
                	else	{sum += 0;}
                	var cb5c = document.querySelector('.cb5:checked').value;
                	if(cb5c == check1)	{sum+=10;}
                	else	{sum += 0;}

                	var e = document.getElementById("under")
                	var under = e.value;
                	if (under == check2)	{sum += 3}
                	else if(under==check3)	{sum += 6;}
                	else if(under==check4)	{sum += 10;}
                	else if (under==check9)	{sum += 16;}
                	
                	var n = document.getElementById("note")
                	var note = n.value;
                	if(note == check2)		{sum += 3}
                	else if(under==check3)	{sum += 6;}
                	else if(under==check4)	{sum += 10;}
                	else if(under==check9)	{sum += 16;}
                	
                	var p = document.getElementById("page")
                	var page = p.value;
                	if(page == check5)	{sum += 3}
                	else if(page==check6)	{sum += 6;}
                	else if(page==check7)	{sum += 10;}
                	else if(page==check9)	{sum += 16;}
                	
                	alert(sum);
                }
                </script>
                    <td colspan="5"><strong>총 오염점수</strong></td></tr>
                    <td colspan="3"><input type="text" name="score"></td>
                    <td><input type="button" value="오염점수보기" onclick='radio()'> </td>
                </tr>
                <tr><td><br></td><td><br></td>
                
               
                <tr>
                	<td colspan="5"><strong>이미지파일 첨부</strong></td></tr>
					<td colspan="5"><input type="file" name="file1"></td>
				</tr>
				<input type="submit" value="작성완료">
                </table>
                </form>
				</section>
				</fieldset>
				
</body>
</html>