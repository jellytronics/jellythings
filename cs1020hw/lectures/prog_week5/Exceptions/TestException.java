import java.util.Scanner;

public class TestException {

	public static int factorial(int n) 
		throws IllegalArgumentException {

			System.out.println("Before Checking");

			if (n < 0) { 
				throw new IllegalArgumentException(n + " is invalid!");
			} 
			System.out.println("After Checking");

			int ans = 1;
			for (int i = 2; i <= n; i++) 
				ans *= i;
			return ans;
		}

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.print("Enter n: ");
		int input = sc.nextInt();

		try {  
			System.out.println("Before factorial()");
			System.out.println("Ans = " + factorial(input));
			System.out.println("After factorial()");
		} catch (IllegalArgumentException expObj){
			System.out.println("In Catch Block");
			System.out.println(expObj.getMessage());
		} finally {
			System.out.println("Finally!");
		}
	}
}
