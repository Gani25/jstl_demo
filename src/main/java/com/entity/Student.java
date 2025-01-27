package com.entity;

public class Student {
	
	private int rollNo;
	
	private String name;
	
	private String gender;
	
	private double marks;

	public Student(int rollNo, String name, String gender, double marks) {
		super();
		this.rollNo = rollNo;
		this.name = name;
		this.gender = gender;
		this.marks = marks;
	}
	
	public Student() {
		// TODO Auto-generated constructor stub
	}

	public int getRollNo() {
		return rollNo;
	}

	public void setRollNo(int rollNo) {
		this.rollNo = rollNo;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public double getMarks() {
		return marks;
	}

	public void setMarks(double marks) {
		this.marks = marks;
	}
	
	

}
