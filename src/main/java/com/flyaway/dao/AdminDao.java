package com.flyaway.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.flyaway.entities.Admin;

public class AdminDao {
	Connection con;

	public AdminDao(Connection con) {
		this.con = con;
	}

	public boolean saveAdmin(Admin admin) {
		boolean isSuccess = false;
		try {
			String query = "insert into admin (name, email, password) values (?, ?, ?)";
			PreparedStatement pstmt = con.prepareStatement(query);
			pstmt.setString(1, admin.getName());
			pstmt.setString(2, admin.getEmail());
			pstmt.setString(3, admin.getPassword());
			if (pstmt.executeUpdate() > 0) {
				isSuccess = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}

	public Admin getAdmin(String email, String password) {
		Admin admin = null;
		try {
			String query = "select * from admin where email = ? and password = ?";
			PreparedStatement pstmt = con.prepareStatement(query);
			pstmt.setString(1, email);
			pstmt.setString(2, password);
			ResultSet set = pstmt.executeQuery();
			if (set.next()) {
				admin = new Admin(set.getInt("id"), set.getString("name"), set.getString("email"),
						set.getString("password"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return admin;
	}
	
	public boolean updateAdmin(Admin admin) {
		boolean isSuccess = false;
		try {
			String query = "update admin set password = ? where email = ?";
			PreparedStatement pstmt = con.prepareStatement(query);
			pstmt.setString(1, admin.getPassword());
			pstmt.setString(2, admin.getEmail());
			if (pstmt.executeUpdate() > 0) {
				isSuccess = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}

}
