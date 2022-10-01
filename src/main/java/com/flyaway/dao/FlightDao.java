package com.flyaway.dao;

import java.sql.*;

import com.flyaway.entities.*;

public class FlightDao {
	Connection con;

	public FlightDao(Connection con) {
		super();
		this.con = con;
	}

	public Flight getFlight(int id) {
		Flight flight = null;

		try {
			String query = "select * from flight where id = ?";
			PreparedStatement stmt = con.prepareStatement(query);
			stmt.setInt(1, id);
			ResultSet resultSet = stmt.executeQuery();
			if(resultSet.next()) {
				flight = new Flight(
						resultSet.getInt("id"),
						resultSet.getString("flightno"), 
						resultSet.getString("source"), 
						resultSet.getString("destination"), 
						resultSet.getInt("ticketprice") 
						);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return flight;
	}
}
