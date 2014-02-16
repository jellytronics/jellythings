import java.util.Scanner;

public class TestExceptionRetry {

	public static int factorial(int n) 
   	    throws IllegalArgumentException {

			if (n < 0) { 
				throw new IllegalArgumentException(n + " is invalid!");
			} 
			int ans = 1;
			for (int i = 2; i <= n; i++) 
				ans *= i;
			return ans;
	}

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);

		int input;
		boolean retry = true;       // Should we retry?

		do {
			try {  
				// Read input
				System.out.print("Enter n: ");
				input = sc.nextInt();
				System.out.println("Ans = " + factorial(input));
				retry  = false;     // Everthing is ok, no need to retry

			} catch (IllegalArgumentException expObj){
				System.out.println(expObj.getMessage());
			}     
		} while (retry);
	}
}
