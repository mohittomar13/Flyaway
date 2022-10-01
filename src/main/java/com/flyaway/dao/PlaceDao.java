package com.flyaway.dao;

import java.sql.*;

import com.flyaway.entities.*;

public class PlaceDao {
	Connection con;

	public PlaceDao(Connection con) {
		super();
		this.con = con;
	}

	public Place getPlace(int id) {
		Place place = null;

		try {
			String query = "select * from place where id = ?";
			PreparedStatement stmt = con.prepareStatement(query);
			stmt.setInt(0, id);
			ResultSet resultSet = stmt.executeQuery();
			if (resultSet.next()) {
				place = new Place(resultSet.getInt("id"), 
						resultSet.getString("place"), 
						resultSet.getString("city"),
						resultSet.getString("airport"));
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return place;
	}

}
