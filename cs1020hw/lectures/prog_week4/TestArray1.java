// Declaring and creating an integer array.
public class TestArray1 {

	public static void main(String[] args) {
		int[] arr; // arr is a reference

		// Create a new integer array with 3 elements.
		// arr now refers (points) to this new array.
		arr = new int[3]; 

		// Using the length attribute.
		System.out.println("Length = " + arr.length);
		
		arr[0] = 100;
		arr[1] = arr[0] - 37;
		arr[2] = arr[1] / 2;

		for (int i=0; i<arr.length; i++)
			System.out.println("arr[" + i + "] = " + arr[i]);
	}
} 

