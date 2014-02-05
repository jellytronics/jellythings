// This program uses the IntPair class to create an object
// containing the lower and upper limits of a range.
// We then use it to check that input data fall within that range.
import java.util.Scanner;

public class TestIntPair {

	public static void main(String[] args) {

		IntPair range = new IntPair(-5, 20);
		Scanner sc = new Scanner(System.in);
		int input;

		do {
			System.out.printf("Enter a number in (%d to %d): ",
			                  range.getFirst(), range.getSecond());

			input = sc.nextInt();

		} while( input < range.getFirst() || 
				input > range.getSecond() );
	}
}
