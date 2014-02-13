// TriangleArea.java
import java.util.*;

public class TriangleArea {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);

		System.out.print("Enter lengths of 3 sides: ");
		double side1 = sc.nextDouble();
		double side2 = sc.nextDouble();
		double side3 = sc.nextDouble();

		System.out.printf("Area of triangle = %.2f\n", area(side1, side2, side3));
	}

	// Compute area of triangle using Heron's formula
	public static double area(double a, double b, double c) {
		double s = (a + b + c)/2; // half perimeter
		return Math.sqrt(s * (s-a) * (s-b) * (s-c));
	}

}

