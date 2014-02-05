// Testing the Point class
import java.util.*;
import java.awt.*;

public class TestPoint {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);

		System.out.print("Enter x and y: ");
		int xCoord = sc.nextInt();
		int yCoord = sc.nextInt();

		Point pt = new Point(xCoord, yCoord);

		System.out.println("x-coordinate is " + pt.getX());
		System.out.println("y-coordinate is " + pt.y);

		System.out.println("The point created is " + pt);
		// or: System.out.println("The point created is " + pt.toString());

	}
} 

