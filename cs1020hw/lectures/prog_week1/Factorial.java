// Factorial.java
// This program computes factorial of a non-negative integer n.

public class Factorial {

	// Returns n!
	// Pre-cond: n >= 0
	public static int factorial(int n) {
		if (n == 0) 
			return 1;
		else 
			return n * factorial(n-1);
	}

	public static void main(String[] args) {

		int n = 5;   // You may change it to interactive input

		System.out.printf("Factorial(%d) = %d\n", n, factorial(n));
	}
}
