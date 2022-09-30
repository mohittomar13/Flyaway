package com.flyaway.entities;

public class Debug {
	private static void tryPrint(Object obj) {
		System.out.println(obj);
	}
	
	public static void log(Object obj) {
		try {
			tryPrint(obj);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
