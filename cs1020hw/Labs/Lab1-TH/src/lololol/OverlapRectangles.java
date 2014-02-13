// CS1020 (AY2013/4 Semester 2)
// Take-home lab #1
// Name: Wong Say Juan, Jeremias
// Matric. No.: A0066754W
// Lab group: 2

//This program computes the area of overlap between rectangles.

import java.util.*;
import java.awt.*;

public class OverlapRectangles {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);

		//	WHY YOU NO LET US EXTEND CLASS?!

		System.out.print("Enter 2 opposite vertices of 1st rectangle: ");
		Point rect1Vertex1 = new Point(sc.nextInt(), sc.nextInt());
		Point rect1Vertex2 = new Point(sc.nextInt(), sc.nextInt());

		System.out.print("Enter 2 opposite vertices of 2nd rectangle: ");
		Point rect2Vertex1 = new Point(sc.nextInt(), sc.nextInt());
		Point rect2Vertex2 = new Point(sc.nextInt(), sc.nextInt());

		//	For testing. Remove or comment off the statement below after testing.
		//	System.out.print("Before Transformation\n");
		//	printAllVertices(rect1Vertex1, rect1Vertex2, rect2Vertex1, rect2Vertex2);

		//Preprocessing

		arrangeVertices(rect1Vertex1, rect1Vertex2);	// Sorts the vertices
		arrangeVertices(rect2Vertex1, rect2Vertex2);	// Sorts the vertices

		// For testing. Remove or comment off the statement below after testing.
		//	System.out.print("After Transformation\n");
		//	printAllVertices(rect1Vertex1, rect1Vertex2, rect2Vertex1, rect2Vertex2);

		System.out.printf("Overlap area = %d", (int)(overlapArea(rect1Vertex1, rect1Vertex2, rect2Vertex1, rect2Vertex2)));

		

	}

	public static void arrangeVertices(Point pt_1, Point pt_2){

		double pt_1x = pt_1.getX();	//	Note this method gets the value of X and Y and double precision
		double pt_1y = pt_1.getY();	//	Note this method gets the value of X and Y and double precision
		double pt_2x = pt_2.getX();	//	Note this method gets the value of X and Y and double precision
		double pt_2y = pt_2.getY();	//	Note this method gets the value of X and Y and double precision

		pt_1.setLocation(Math.min(pt_1x, pt_2x), Math.min(pt_1y, pt_2y)); // Bottom Left Corner of Rect
		pt_2.setLocation(Math.max(pt_1x, pt_2x), Math.max(pt_1y, pt_2y)); // Top Right Corner of Rect
	}

	public static double overlapArea(Point rect_1a, Point rect_1b, Point rect_2a, Point rect_2b){

		double rect_1_minx = rect_1a.getX();	//	Not really necessary - Just did this to improve readablity
		double rect_1_maxx = rect_1b.getX();	//	Not really necessary - Just did this to improve readablity
		double rect_1_miny = rect_1a.getY();	//	Not really necessary - Just did this to improve readablity
		double rect_1_maxy = rect_1b.getY();	//	Not really necessary - Just did this to improve readablity
		double rect_2_minx = rect_2a.getX();	//	Not really necessary - Just did this to improve readablity
		double rect_2_maxx = rect_2b.getX();	//	Not really necessary - Just did this to improve readablity
		double rect_2_miny = rect_2a.getY();	//	Not really necessary - Just did this to improve readablity
		double rect_2_maxy = rect_2b.getY();	//	Not really necessary - Just did this to improve readablity

		double x_overlap = Math.min(rect_1_maxx, rect_2_maxx) - Math.max(rect_2_minx, rect_1_minx);
		double y_overlap = Math.min(rect_1_maxy, rect_2_maxy) - Math.max(rect_2_miny, rect_1_miny);

		return Math.max( x_overlap, 0.0) * Math.max( y_overlap, 0.0);

	}

	// This method is provided for your testing.
	// To print the 2 opposite vertices of each of the 2 rectangles.
	public static void printAllVertices(Point r1V1, Point r1V2,
	                                    Point r2V1, Point r2V2) {
		System.out.println("1st rectangle vertex 1: " + r1V1);
		System.out.println("1st rectangle vertex 2: " + r1V2);
		System.out.println("2nd rectangle vertex 1: " + r2V1);
		System.out.println("2nd rectangle vertex 2: " + r2V2);
	}

}