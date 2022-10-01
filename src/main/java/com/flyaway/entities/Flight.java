package com.flyaway.entities;

import java.sql.*;

public class Flight {
	private int id;
	private String flightNo;
	private String source;
	private String destination;
	private int ticketPrice;
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFlightNo() {
		return flightNo;
	}

	public void setFlightNo(String flightNo) {
		this.flightNo = flightNo;
	}

	public String getSource() {
		return source;
	}

	public void setSource(String source) {
		this.source = source;
	}

	public String getDestination() {
		return destination;
	}

	public void setDestination(String destination) {
		this.destination = destination;
	}

	public int getTicketPrice() {
		return ticketPrice;
	}

	public void setTicketPrice(int ticketPrice) {
		this.ticketPrice = ticketPrice;
	}

	public Flight(int id, String flightNo, String source, String destination, int ticketPrice) {
		super();
		this.id = id;
		this.flightNo = flightNo;
		this.source = source;
		this.destination = destination;
		this.ticketPrice = ticketPrice;
	}

	
	
	
}
