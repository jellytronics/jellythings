// CS1020 (AY2013/4 Semester 2)
// Name: Wong Say Juan Jeremias
// Matric. No.: A0066754W
// Lab group: 2
// Write the program description below.
// It is mandatory to write program description at the top of every program.
// Marks will be awarded for this in sit-in labs.
// Please remove this line and its preceding 3 lines.

import java.util.*;

public class AreaOfTriangle {

	// For modularity, you are to define a class method area(double, double, double) that takes in the 
	// lengths (positive values) and returns the computed area, and a class method 
	// validTriangle(double, double, double) that returns true if the 3 parameters can possibly 
	// represent the lengths of 3 sides of a triangle, or false if it is impossible (see the third sample run 
	// below), in which case the program should display “Invalid triangle!” in the output.

	public static void main(String[] args) {
		double a, b, c;  // lengths of sides of triangle
		Scanner sc = new Scanner(System.in);

		System.out.print("Enter 3 lengths: ");

		a = sc.nextDouble();
		b = sc.nextDouble();
		c = sc.nextDouble();

		if (validTriangle(a, b, c)){
			System.out.printf("Area = %.2f", area(a,b,c));
		}else{
			System.out.printf("Invalid triangle!");
		}

		

	}

	public static boolean validTriangle(double a, double b, double c){
		// tells you whether a,b,c can form sides of a triangle, enuff said
		return (((a + b) > c) && ((b + c) > a) && ((c + a) > b));
	}

	public static double area(double a, double b, double c){
		// computes the area of triangle
		double p = (a + b + c) / 2.0;
		return Math.sqrt(p * (p - a) * (p - b) * (p - c));
	}
}
