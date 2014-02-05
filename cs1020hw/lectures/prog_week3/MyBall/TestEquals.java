// This program tests out the equals() method of Ball class,
// and compares it with ==.
import java.util.*;

public class TestEquals {

	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);

		MyBall b1, b2, b3;

		b1 = new MyBall("red", 6.2);
		b2 = b1;
		b3 = new MyBall("red", 6.2);

		System.out.println("b1 == b2? " + (b1 == b2));
		System.out.println("b1 == b3? " + (b1 == b3));
		System.out.println("b1.equals(b2)? " + b1.equals(b2));
		System.out.println("b1.equals(b3)? " + b1.equals(b3));
	}
}

