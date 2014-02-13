// ApproximatePi.java
// This program computes an approximate value of pi
// using the formula:
//   pi = 4/1 - 4/3 + 4/5 - 4/7 + 4/9 - ...

import java.util.*; // Using * in import statement

public class ApproximatePI {

	public static void main(String[] args) {

		int nTerms, sign = 1, denom = 1;
		double pi = 0.0;

		Scanner sc = new Scanner(System.in);

		System.out.print("Enter number of terms: ");
		nTerms = sc.nextInt();

		for (int i = 0; i < nTerms; i++) {
			pi += 4.0 / denom * sign;
			sign *= -1;
			denom += 2;
		}
		System.out.printf("PI = %.6f\n", pi);
	}
}
