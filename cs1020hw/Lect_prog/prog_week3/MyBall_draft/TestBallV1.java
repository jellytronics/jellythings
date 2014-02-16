// To test out MyBall class 
// Aaron Tan
import java.util.*;

public class TestBallV1 {

	public static void main(String[] args) {
		String inputColour;
		double inputRadius;
		Scanner sc = new Scanner(System.in);

		// Read ball's input and create a ball object
		System.out.print("Enter colour: ");
		inputColour = sc.next();
		System.out.print("Enter radius: ");
		inputRadius = sc.nextDouble();
		MyBall myBall1 = new MyBall(inputColour, inputRadius);
		System.out.println();

		// Read another ball's input and create another ball object
		System.out.print("Enter colour: ");
		inputColour = sc.next();
		System.out.print("Enter radius: ");
		inputRadius = sc.nextDouble();
		MyBall myBall2 = new MyBall(inputColour, inputRadius);
		System.out.println();

		System.out.println(MyBall.getQuantity() + " balls are created.");

		System.out.println("1st ball's colour and radius: " + myBall1.getColour() 
				+ ", " + myBall1.getRadius());
		System.out.println("2nd ball's colour and radius: " + myBall2.getColour() 
				+ ", " + myBall2.getRadius());
	}
}

