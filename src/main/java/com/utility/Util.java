package com.utility;

import java.util.ArrayList;
import java.util.List;

import com.entity.Student;

public class Util {
	
	public static List<Student> getAllStudents(){
		List<Student> students = new ArrayList<>();
		
		students.add(new Student(1, "Abdul Gani", "Male", 15.55));
		students.add(new Student(2, "Aditya Singh", "Male", 95.55));
		students.add(new Student(3, "Pranjal Sharma", "Female", 43.68));
		students.add(new Student(4, "Rohini Sable", "Female", 10.18));
		students.add(new Student(5, "Sakshi Shinde", "Female", 76.78));
		
		return students;
	}

}
