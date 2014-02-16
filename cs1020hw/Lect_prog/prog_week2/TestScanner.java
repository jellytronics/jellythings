// To demonstrate some Scanner methods
import java.util.*;

public class TestScanner {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);

		// Comparing nextLine() and next()
		System.out.print("Enter name1: ");
		String name1 = sc.nextLine();
		System.out.println("name1 entered is '" + name1 + "'.");

		System.out.print("Enter name2: ");
		String name2 = sc.next();
		System.out.println("name2 entered is '" + name2 + "'.");

		sc.nextLine(); // to skip the rest of the line after the next()
		               // method captured the first word of the second name

		// Using nextInt() and hasNextInt() 
		int num, sum = 0;
		System.out.println("Enter integers, terminate with control-d:");
		while (sc.hasNextInt()) {
			num = sc.nextInt();
			System.out.println("Integer read: " + num);
			sum += num;
		}
		System.out.println("Sum = " + sum);
	}
} 

