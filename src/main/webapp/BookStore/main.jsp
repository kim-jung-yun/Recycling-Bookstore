<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<style>
</style>
<head>
<link href="main.css" rel="stylesheet" type="text/css">
<meta charset="UTF-8">
</head>
<body>
<header id = "fixed-bar" class = "fixed-bar-box-shadow">
  <div id = "fixed-bar-wrap">
    <a id = "fixed-bar-logo-title" href = "main.jsp">
      <span class = "sr-only">북스토어</span>
      <img class ="fixed-logo" alt ="리사이클링북스토어" src="https://cdn.pixabay.com/photo/2017/11/14/14/46/book-2948634_960_720.png"  width = "120" height = "34">
    </a>
    <section id="fixed-bar-search">
      <div class = "search-input-wrap">
        <span class = "sr-only">검색</span>
        <input type="text" name ="head-shearch-input" id= "header-search-input" class ="fixed-search-input
        __web-inspector-hide-shortcut"placeholder ="책을 검색해보세요!">
        <button id ="heaer-shearch-button" OnClick="window.location='list_1.jsp'">
        <img class="fixed-search-icon" alt="Search" src="https://cdn.pixabay.com/photo/2017/01/13/01/22/magnifying-glass-1976105_960_720.png" width="24">
        </button>
      </div>
    </section>
    <section class = "fixed-bar-menu">
    	<a href="join_1.jsp" target="_blank">
    	<button class = "chat-button">
    	<span class = "button-text">로그인</span>
    	</button>
    	</a>
    </section>
    <section class = "fixed-bar-menu">
    	<a href="login.html" target="_blank" id="anchor" style="float: right;">
    	<button class = "chat-button">
    	<span class = "button-text">로그아웃</span>
    	</button>
    	</a>
    </section>
    
   </div>
   
</header>
