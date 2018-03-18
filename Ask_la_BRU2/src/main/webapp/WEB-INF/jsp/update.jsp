<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="com.hillert.model.*"%>
<%@ page import="java.util.List"%>
<html xmlns:th="http://www.thymeleaf.org">




<head>

	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

	<%
		LoginBean bean = null;
		UserBean userBean = null;
		String result = "";
	%>
	<%
		bean = (LoginBean) request.getSession().getAttribute("LoginUser");
		userBean = (UserBean) request.getAttribute("resultBean");
		result = (String) request.getAttribute("messesUpdate");
	%>

</head>





<body style="margin-top: 5%">
	<form name="updateForm" action="update" method="post">
		<div class="container">
			<div class="alert alert-success" align="right">
				<strong>Welcome </strong>
				<%=bean.getLogUsername()%>
				<a href="javascript: document.logoutForm.submit()"
					class="btn btn-danger">Logout</a>
			</div>
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
					class="form-control" name="userIdcard" readonly=""	
					value="<%=userBean.getUserIdcard()%>">
			</div>
			<div class="form-group">
				<label for="exampleInputEmail1">FristName</label> <input type="text"
					class="form-control" name="userFname"
					value="<%=userBean.getUserFname()%>">
			</div>
			<div class="form-group">
				<label for="exampleInputEmail1">LastName</label> <input type="text"
					class="form-control" name="userLname"
					value="<%=userBean.getUserLname()%>">
			</div>
			<div class="form-group">
				<label for="exampleInputEmail1">Faculty</label> <input type="text"
					class="form-control" name="facId"
					value="<%=userBean.getFacId()%>">
			</div>
			<div class="form-group">
				<label for="exampleInputEmail1">Departmen</label> <input type="text"
					class="form-control" name="userDepartment"
					value="<%=userBean.getUserDepartment()%>">
			</div>
			<div class="form-group">
				<label for="exampleInputEmail1">Position</label> <input type="text"
					class="form-control" name="userPosition"
					value="<%=userBean.getUserPosition()%>">
			</div>
			<div class="form-group">
				<label for="exampleInputEmail1">Step</label> <input type="text"
					class="form-control" name="userStep"
					value="<%=userBean.getUserStep()%>">
			</div>
			<button type="submit" class="btn btn-success">Submit</button>
			<a type="button" class="btn btn-danger"
				href="javascript: document.backForm.submit()"> Back</a>

		</div>
			<div class="crop">
		</div>
	</form>
	
	
	<form name="backForm"   action="gotoWelcome" method="post" th:hidden="true"></form>
	<form name="logoutForm" action="logout"      method="post" th:hidden="true"></form>


	<script type="text/javascript" src="webjars/jquery/2.1.1/jquery.min.js"></script>
	<script type="text/javascript"
		src="webjars/bootstrap/3.2.0/js/bootstrap.min.js"></script>
</body>
</html>