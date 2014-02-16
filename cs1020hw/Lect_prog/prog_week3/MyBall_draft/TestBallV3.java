// To test out MyBall class 
// The input portion is modularised to call readBall().
// This program attempts to print the MyBall objects.
// Aaron Tan

import java.util.*;

public class TestBallV3 {

	// This method reads ball's input data from user, creates
	// a ball object, and returns it to the caller.
	public static MyBall readBall(Scanner sc) {
		System.out.print("Enter colour: ");
		String inputColour = sc.next();
		System.out.print("Enter radius: ");
		double inputRadius = sc.nextDouble();

		return new MyBall(inputColour, inputRadius);
	}

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);

		MyBall myBall1 = readBall(sc); // Read input and create a ball object
		System.out.println();

		MyBall myBall2 = readBall(sc); // Read input and create another ball object
		System.out.println();

		System.out.println(MyBall.getQuantity() + " balls are created.");
	
		System.out.println("1st ball: " + myBall1);
		System.out.println("2nd ball: " + myBall2);
	}
}

