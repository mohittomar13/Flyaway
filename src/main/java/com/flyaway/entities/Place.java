package com.flyaway.entities;

public class Place {

	private int id;
	private String place;
	private String city;
	private String airport;
	
	public Place(int id, String place, String city, String airport) {
		super();
		this.id = id;
		this.place = place;
		this.city = city;
		this.airport = airport;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getPlace() {
		return place;
	}

	public void setPlace(String place) {
		this.place = place;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getAirport() {
		return airport;
	}

	public void setAirport(String airport) {
		this.airport = airport;
	}
}
