<%@page import="com.hillert.model.LoginBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>


<body>

<!-- Sidebar/menu -->
<nav class="w3-sidebar w3-collapse w3-white w3-animate-left" style="z-index:3;width:300px;" id="mySidebar"><br>
<!-- Profile -->
	<div class="w3-container" align="center">
    	<a href="#" onclick="w3_close()" class="w3-hide-large w3-right w3-jumbo w3-padding w3-hover-grey" title="close menu">
     	<i class="fa fa-remove"></i>
    	</a>
    	<img src="/images/bru.png"style="width:45%;" class="w3-round"><br><br>
    	<h4><b>PORTFOLIO</b></h4>
    	<p class="w3-text-grey"><%=bean.getLogUsername()%></p>
	</div >
  

  
  
<!-- Manu -->
	<div class="w3-bar-block">
  		 <a href="javascript: document.backForm.submit()" onclick="w3_close()" class="w3-bar-item w3-button w3-padding ">
    		<i class="fa fa-th-large fa-fw w3-margin-right"></i>หน้าแรก</a> 
	    <a href="javascript: document.Ask_laForm.submit()" onclick="w3_close()" class="w3-bar-item w3-button w3-padding">
    		<i class="fa fa-newspaper-o w3-margin-right"></i>ใบขออนุญาตไปราการ</a> 
   	    <a href="javascript: document.Ask_storyForm.submit()" onclick="w3_close()" class="w3-bar-item w3-button w3-padding">
    		<i class="fa fa-address-card-o w3-margin-right"></i>ประวัติไปปราชการ</a> 
	    <a href="javascript: document.helpForm.submit()" onclick="w3_close()" class="w3-bar-item w3-button w3-padding" >
    		<i class="fa fa-envelope fa-fw w3-margin-right"></i>สอบถาม</a>
  	    <a href="javascript: document.logoutForm.submit()" onclick="w3_close()" class="w3-bar-item w3-button w3-padding">
    		<i class="glyphicon glyphicon-log-in w3-margin-right"></i> Logout</a>
 	 </div>
 	 
 	 
<!-- social -->
	<div class="w3-panel w3-large" align="center">
    	<i class="fa fa-facebook-official w3-hover-opacity"></i>
    	<i class="fa fa-instagram w3-hover-opacity"></i>
    	<i class="fa fa-snapchat w3-hover-opacity"></i>
    	<i class="fa fa-pinterest-p w3-hover-opacity"></i>
    	<i class="fa fa-twitter w3-hover-opacity"></i>
    	<i class="fa fa-linkedin w3-hover-opacity"></i>
	</div>
</nav>


<script>
// Script to open and close sidebar
function w3_open() {
    document.getElementById("mySidebar").style.display = "block";
    document.getElementById("myOverlay").style.display = "block";
}
 
function w3_close() {
    document.getElementById("mySidebar").style.display = "none";
    document.getElementById("myOverlay").style.display = "none";
}
</script>

</body>
</html>