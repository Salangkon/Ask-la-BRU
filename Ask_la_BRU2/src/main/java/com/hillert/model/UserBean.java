package com.hillert.model;

public class UserBean {
	private int UserId;
	private String UserIdcard;
	private String UserFname;
	private String UserLname;
	private int facId;
	private String UserDepartment;
	private String UserPosition;
	private String UserStep;
	private String RoleId;
	
	
	
	public int getUserId() {
		return UserId;
	}
	public void setUserId(int userId) {
		UserId = userId;
	}
	public String getUserIdcard() {
		return UserIdcard;
	}
	public void setUserIdcard(String userIdcard) {
		UserIdcard = userIdcard;
	}
	public String getUserFname() {
		return UserFname;
	}
	public void setUserFname(String userFname) {
		UserFname = userFname;
	}
	public String getUserLname() {
		return UserLname;
	}
	public void setUserLname(String userLname) {
		UserLname = userLname;
	}
	public int getFacId() {
		return facId;
	}
	public void setFacId(int facId) {
		this.facId = facId;
	}
	public String getUserDepartment() {
		return UserDepartment;
	}
	public void setUserDepartment(String userDepartment) {
		UserDepartment = userDepartment;
	}
	public String getUserPosition() {
		return UserPosition;
	}
	public void setUserPosition(String userPosition) {
		UserPosition = userPosition;
	}
	public String getUserStep() {
		return UserStep;
	}
	public void setUserStep(String userStep) {
		UserStep = userStep;
	}
	public String getRoleId() {
		return RoleId;
	}
	public void setRoleId(String roleId) {
		RoleId = roleId;
	}
		

}
