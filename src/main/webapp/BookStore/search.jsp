<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <title>검색 창</title>
</head>
<body> 
    <header class="header"></header> 
    <nav class="nav">  </nav>
    <section class="section"><p>
<form name="search" method="get" target ="_blank" > 
    <fieldset>
        <legend><h1>책 검색</h1></legend>
        <table>
            <tr>
                <td>
                책이름 :</td>
                <td><input type="text" size="10"></td>
                <td></td>

            <tr>
                <td>
                학과 :</td>
                <td><input type="text" size="10"></td>
                    <td></td>
            <tr>  
                <td>
                학년 :</td>
                <td><input type="text" list="grade"><br>
                            <datalist id="grade">
                            <option value="1">
                            <option value="2">
                            <option value="3">
                            <option value="4">
                            </datalist></td>
                        <td></td>
            <tr>
                <td><input type="submit" value="검색" onclick="search.jsp"></td>
                </tr>
            </table>
        </form>
    </div>    
</section>

</body>
</html>