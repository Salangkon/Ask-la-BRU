package com.hillert.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.stereotype.Repository;

import com.hillert.model.UserBean;
import com.hillert.util.ConnectDB;

@Repository
public class UserDao {

	public UserBean findByidCard(String idCard) throws SQLException {
		UserBean bean = new UserBean();
		ConnectDB con = new ConnectDB();
		PreparedStatement preperd = null;
		StringBuilder sql = new StringBuilder();

		try {
			sql.append(" SELECT * FROM tbl_user WHERE user_idcard = ? ");
			preperd = con.openConnect().prepareStatement(sql.toString());
			preperd.setString(1, idCard);
			ResultSet rs = preperd.executeQuery();

			while (rs.next()) {
				bean.setUserId(rs.getInt("user_id"));
				bean.setUserIdcard(rs.getString("user_idcard"));
				bean.setUserFname(rs.getString("user_fname"));
				bean.setUserLname(rs.getString("user_lname"));
				bean.setFacId(rs.getInt("fac_id"));
				bean.setUserDepartment(rs.getString("user_department"));
				bean.setUserPosition(rs.getString("user_position"));
				bean.setUserStep(rs.getString("user_step"));
				bean.setRoleId(rs.getString("role_id"));
			}

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			if (con != null) {
				con.openConnect().close();
			}
		}

		return bean;
	}
	
	//insert
	public void insert(UserBean bean) {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();

		try {
			sql.append(" INSERT INTO tbl_user(user_idcard,user_fname,user_lname,fac_id,user_department,user_position,user_step,role_id) "
					+ "VALUES(?,?,?,?,?,?,?,?) ");
			prepared = con.openConnect().prepareStatement(sql.toString());
			prepared.setString(1, bean.getUserIdcard());
			prepared.setString(2, bean.getUserFname());
			prepared.setString(3, bean.getUserLname());
			prepared.setInt(4, bean.getFacId());
			prepared.setString(5, bean.getUserDepartment());
			prepared.setString(6, bean.getUserPosition());
			prepared.setString(7, bean.getUserStep());
			prepared.setString(8, bean.getRoleId());
			prepared.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	// update
	public void update(UserBean bean) {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		try {
			sql.append(" UPDATE tbl_user SET  user_fname = ? , user_lname = ?, fac_id = ?, user_department = ?, "
					+ "user_position = ?, user_step = ? WHERE user_idcard = ? ");
			prepared = con.openConnect().prepareStatement(sql.toString());
			prepared.setString(1, bean.getUserFname());
			prepared.setString(2, bean.getUserLname());
			prepared.setInt(4, bean.getFacId());
			prepared.setString(4, bean.getUserDepartment());
			prepared.setString(5, bean.getUserPosition());
			prepared.setString(6, bean.getUserStep());
			prepared.setString(7, bean.getUserIdcard());

			prepared.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
		}

	}// end method update

	// delete
	public void delete(String id) {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		try {
			sql.append(" DELETE FROM tbl_user WHERE user_idcard = ? ");
			prepared = con.openConnect().prepareStatement(sql.toString());
			prepared.setString(1, id);
			prepared.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
		}
	} // end method delete

	
	
	
	
	/*public static void main(String[] args) throws SQLException {
		StudentBean bean = new StudentBean();
		StudentDao dao = new StudentDao();

		bean = dao.findByidCard("admin");
		System.out.println("Fname = " + bean.getStFname());
	}*/
}
