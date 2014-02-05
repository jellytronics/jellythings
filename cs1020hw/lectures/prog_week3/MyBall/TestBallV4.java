// To test out MyBall class 
// Aaron Tan

import java.util.*;

public class TestBallV4 {

	// This method reads ball's input data from user, creates
	// a ball object, and returns it to the caller.
	public static MyBall readBall(Scanner sc) {

		System.out.print("Enter colour: ");
		String inputColour = sc.next();
		System.out.print("Enter radius: ");
		double inputRadius = sc.nextDouble();

		// Create a Ball object using the alternative constructor
		return new MyBall(inputColour, inputRadius);
	}

	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);

		// Read input and create a ball object
		MyBall myBall1 = readBall(scanner);
		System.out.println();

		// Read input and create another ball object
		MyBall myBall2 = readBall(scanner);
		System.out.println();

		System.out.println(MyBall.getQuantity() + " balls are created.");

		// Testing toString() method
		// You may also write: 
		//    System.out.println("1st ball: " + myBall1.toString());
		//    System.out.println("2nd ball: " + myBall2.toString());
		System.out.println("1st ball: " + myBall1);
		System.out.println("2nd ball: " + myBall2);

		// Testing == 
		System.out.println("(myBall1 == myBall2) is " + (myBall1 == myBall2));

		// Testing equals() method
		System.out.println("myBall1.equals(myBall2) is " + myBall1.equals(myBall2));
	}
}

