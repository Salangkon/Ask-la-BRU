<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%
	String result = "";
%>
<%
	result = (String) request.getAttribute("messessError");
%>
<html xmlns:th="http://www.thymeleaf.org">

<head>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>


<body>
	<div class="container">
		<form name="login" action="login" method="post">
			<div class="panel panel-primary" style="margin-top: 10%">
				<div class="panel-heading">Login</div>
				<div class="panel-body">
					<%
						if (result.equals("F")) {
					%>
					<div class="alert alert-danger">
						<strong>Faill ! </strong> You Login Faill !!
					</div>
					<%
						} else if (result.equals("L")) {
					%>
					<div class="alert alert-success">
						<strong>Success </strong> Logout Success
					</div>
					<%
						}
					%>
					<div class="form-group">
						<label for="exampleInputEmail1">ID Card</label> <input type="text"
							class="form-control" placeholder="ID card" name="username">
					</div>
					<div class="form-group">
						<label for="exampleInputPassword1">Password</label> <input
							type="password" class="form-control" placeholder="Password"
							name="password">
					</div>
					<div class="form-group">
						<select name="roleId" class="form-control">
						<option value="1"> ADMIN</option>
						<option value="2"> USER</option>
						</select>
					</div>
				</div>
				<div class="panel-footer">
					<button type="submit" class="btn btn-success">Submit</button>	
  					<button type="button" class="btn btn-danger" data-toggle="modal" data-target="#myModal">Regster</button>
				</div>
			</div>
		</form>
	</div>
	
	
	<!-- insert_login -->
	<div class="modal fade" id="myModal" role="dialog">
   		 <div class="modal-dialog">
   			 <form name="welcome" action="insert_login" method="post">
 				<div class="panel panel-primary" style="margin-top: 7%" >
					<div class="panel-heading" align="center">Welcome to register.</div>
						<div class="panel-body">
						
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
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
    	  	 		</div>
				</div>
			</form>
   		</div>
	</div>

	<!-- random password -->
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
	
	<script type="text/javascript" src="webjars/jquery/2.1.1/jquery.min.js"></script>
	<script type="text/javascript" src="webjars/bootstrap/3.2.0/js/bootstrap.min.js"></script>
	
</body>
</html>