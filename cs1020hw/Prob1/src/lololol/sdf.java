package lololol;

// CS1020 (AY2013/4 Semester 2)
// Name: Wong Say Juan Jeremias
// Matric. No.: A0066754W
// Lab group: 2
// Write the program description below.
// It is mandatory to write program description at the top of every program.
// Marks will be awarded for this in sit-in labs.
// Please remove this line and its preceding 3 lines.

import java.util.*;

public class sdf {

	// For modularity, you are to define a class method area(double, double, double) that takes in the 
	// lengths (positive values) and returns the computed area, and a class method 
	// validTriangle(double, double, double) that returns true if the 3 parameters can possibly 
	// represent the lengths of 3 sides of a triangle, or false if it is impossible (see the third sample run 
	// below), in which case the program should display “Invalid triangle!” in the output.

	public static void main(String[] args) {

		String month;
		String sdate, syear;
		int date, year;
		Scanner sc = new Scanner(System.in);
		System.out.print("Enter date in UK format: ");
		month = sc.next();
		sdate = sc.next();
		sdate = sdate.replaceAll("[,]", "");
		date = Integer.valueOf(sdate);
		syear = sc.next();
		year = Integer.valueOf(syear);


		System.out.printf("Date in American format: %d %s %d\n", date, month, year);
		if (isLeapYear(year)){
			System.out.printf("%d is a leap year.", year);
		}else{
			System.out.printf("%d is not a leap year.", year);
		}

	}

	public static boolean isLeapYear(int yearyo){
		return (yearyo % 400 == 0) || (yearyo % 4 == 0 && yearyo % 100 != 0);
	}
}
