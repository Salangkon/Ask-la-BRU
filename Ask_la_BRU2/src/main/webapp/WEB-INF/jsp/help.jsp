<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="com.hillert.model.LoginBean"%>
<%@ page import="java.util.List"%>
<html xmlns:th="http://www.thymeleaf.org">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ระบบลาไปราชการ</title>

	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="/css/NewFile.css">
	
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	
	
	<%
		LoginBean bean = null;
		List<LoginBean> list = null;
	%>
	<%
		bean = (LoginBean) request.getSession().getAttribute("LoginUser");
		list = (List<LoginBean>) request.getSession().getAttribute("listUser");
	
	%>
</head>



<body class="w3-light-grey w3-content" style="max-width:1600px" >

<!-- Sidebar/menu -->


<%@include file="Nav.jsp"%>



<!-- Overlay effect when opening sidebar on small screens -->
<div class="w3-overlay w3-hide-large w3-animate-opacity" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>

<!-- !PAGE CONTENT! -->
<div class="w3-main" style="margin-left:300px">
  <!-- Header -->
  <header id="portfolio">
    <a href="#"><img src="/w3images/avatar_g2.jpg" style="width:65px;" class="w3-circle w3-right w3-margin w3-hide-large w3-hover-opacity"></a>
    <span class="w3-button w3-hide-large w3-xxlarge w3-hover-text-grey" onclick="w3_open()"><i class="fa fa-bars"></i></span>
    <div class="w3-container" align="center">
    <h1><b>สอบถาม</b></h1>
    <div class="w3-section w3-bottombar w3-padding-16">
      <span class="w3-margin-right">ลาไปราชการ:</span> 
       <button class="w3-button w3-black"><i class="glyphicon glyphicon-pencil w3-margin-right"></i>ใบกรอก</button>
       <button class="w3-button w3-white"><i class="glyphicon glyphicon-user w3-margin-right"></i>การพิจราณา</button>
       <button class="w3-button w3-white w3-hide-small"><i class="glyphicon glyphicon-list-alt w3-margin-right"></i>ประมาณการรายจ่าย</button>
       <button class="w3-button w3-white w3-hide-small"><i class="glyphicon glyphicon-book w3-margin-right"></i>สรูป</button>
    </div>
    </div>
  </header>
	

  <!-- Pagination -->
  <div class="w3-center w3-padding-32">
    <div class="w3-bar">
      <a href="#" class="w3-bar-item w3-button w3-hover-black">«</a>
      <a href="#" class="w3-bar-item w3-black w3-button">1</a>
      <a href="#" class="w3-bar-item w3-button w3-hover-black">2</a>
      <a href="#" class="w3-bar-item w3-button w3-hover-black">3</a>
      <a href="#" class="w3-bar-item w3-button w3-hover-black">4</a>
      <a href="#" class="w3-bar-item w3-button w3-hover-black">»</a>
    </div>
  </div>

  
    
    <div class="w3-black w3-center w3-padding-24">Powered by <a href="https://www.w3schools.com/w3css/default.asp" title="W3.CSS" target="_blank" class="w3-hover-opacity">w3.css</a></div>
</div>
	
	
	<form name="Ask_storyForm" action="gotoAsk_story" method="post" th:hidden="true"></form>
	<form name="backForm"   action="gotoWelcome" method="post" th:hidden="true"></form>
	<form name="Ask_laForm" action="gotoAsk_la"  method="post" th:hidden="true"></form>
	<form name="insertForm" action="gotoInsert"  method="post" th:hidden="true"></form>
	<form name="helpForm"   action="gotoHelp"    method="post" th:hidden="true"></form>
	<form name="logoutForm" action="logout" 	 method="post" th:hidden="true"></form>
		

		
</body>
</html>