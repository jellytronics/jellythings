// To generate a number of unique random integers in the range
// [0, limit - 1], and count the number of duplicates generated.
import java.util.*;

public class DetectDuplicates {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		ArrayList<Integer> list = new ArrayList<Integer>();

		System.out.print("Enter number of unique integers to generate: ");
		int numUnique = sc.nextInt();

		System.out.print("Enter limit: ");
		int limit = sc.nextInt();

		Random rnd = new Random();
		int countUnique = 0; // number of unique integers generated so far
		int countDuplicates = 0; // number of duplicates encountered so far
		int num; // the random number

		while (countUnique < numUnique) {
			num = rnd.nextInt(limit);
			// System.out.println("num generated: " + num); // for checking
			if (list.contains(num)) {
				countDuplicates++;
			}
			else {
				list.add(num);
				countUnique++;
			}
		}

		System.out.println("List: " + list);
		System.out.println("Duplicates detected: " + countDuplicates);
	}
} 

