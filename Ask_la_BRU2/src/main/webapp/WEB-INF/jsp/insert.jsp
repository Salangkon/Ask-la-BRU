<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="com.hillert.model.LoginBean"%>
<%@ page import="java.util.List"%>
<%@page import="com.hillert.model.UserBean"%>
<html xmlns:th="http://www.thymeleaf.org">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href= "/css/bootstrap.min.css"> 
<%
	LoginBean bean = null;
	String result = "";
%>
<%
	bean= (LoginBean) request.getSession().getAttribute("LoginUser");
	result = (String) request.getAttribute("messes");
%>
</head>
<body style="margin-top: 5%">
	<form name="welcome" action="insert	" method="post">
 		<div class="container">
 		<div class="panel panel-primary" style="margin-top: 7%" >
				<div class="panel-heading">Welcome to register.</div>
				<div class="panel-body">
				<%=bean.getLogUsername()%>
				<a href="javascript: document.logoutForm.submit()"
					class="btn btn-danger">Logout</a>
			
			<%
				if (result.equals("S")) {
			%>
			<div class="alert alert-success">
				<strong>Success!</strong> Insert Success..
			</div>
			<%
				} else if (result.equals("F")) {
			%>
			<div class="alert alert-danger">
				<strong>Danger!</strong> Insert Fail !..
			</div>
			<%
				}
			%>
			<div class="form-group">
				<label for="exampleInputEmail1">ID Card</label> <input type="text"
					class="form-control" name="userIdcard">
			</div>
			<div class="form-group">
				<label for="exampleInputEmail1">Password</label> <input type="text"
					class="form-control" name="password">
					<input type="button" class="btn btn-danger" value="Generate" onClick="generate();" tabindex="2">
			</div>
			<div class="form-group">
				<label for="exampleInputEmail1">FristName</label> <input type="text"
					class="form-control" name="userFname">
			</div>
			<div class="form-group">
				<label for="exampleInputEmail1">LastName</label> <input type="text"
					class="form-control" name="userLname">
			</div>
				<div class="form-group">
							<label for="exampleInputEmail1">Faculty</label>
							<select name="facId" class="form-control">
								<option value="1">คณะครุศาสตร์</option>
								<option value="2">คณะวิทยาศาสตร์</option>
								<option value="3">คณะวิทยาการจัดการ</option>
								<option value="4">คณะเทคโนโลยีอุตสาหกรรม</option>
								<option value="5">คณะเทคโนโลยีการเกษตร</option>
								<option value="6">คณะเทคโนโลยีการเกษตร</option>
							</select>		
						</div>
			<div class="form-group">
				<label for="exampleInputEmail1">Department</label> <input type="text"
					class="form-control" name="userDepartment">
			</div>
			<div class="form-group">
				<label for="exampleInputEmail1">Position</label> <input type="text"
					class="form-control" name="userPosition">
			</div>
			<div class="form-group">
				<label for="exampleInputEmail1">Step</label> <input type="text"
					class="form-control" name="userStep">
			</div>
			<div class="form-group">
				<select name="roleId" class="form-control">
					<option value="1">ADMIN</option>
					<option value="2">USER</option>
				</select>
			</div>
			<button type="submit" class="btn btn-success">Submit</button>
			<button type="reset" class="btn btn-danger">Reset</button>
			<a type="button" class="btn btn-danger" href="javascript: document.backForm.submit()"> Back</a>
			</div>
		</div>
	</div>
</form>
	<form name="backForm"	 action="/"		 method="post" th:hidden="true"></form>
	<form name="logoutForm"  action="logout" method="post" th:hidden="true"></form>


	<script type="text/javascript" src="webjars/jquery/2.1.1/jquery.min.js"></script>
	<script type="text/javascript" src="webjars/bootstrap/3.2.0/js/bootstrap.min.js"></script>
		
		
		
		<!-- Random password  -->
	<script type="text/javascript">
	function randomPassword(length) {
	    var chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890";
	    var pass = "";
	    for (var x = 0; x <=7; x++) {
	        var i = Math.floor(Math.random() * chars.length);
	        pass += chars.charAt(i);
	    }
	    return pass;
	}

	function generate() {
		welcome.password.value = randomPassword(welcome.length.value);
	}
	</script>
	
</body>
</html>