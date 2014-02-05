// Passing an array to a method.
public class TestArray3 {

	public static void main(String[] args) {
		int[] list = { 22, 55, 33 };

		swap(list, 0, 2);
		
		for (int element: list) {
			System.out.print(element + " ");
		}
		System.out.println();
	}

	// To swap arr[i] with arr[j]
	public static void swap(int[] arr, int i, int j) {
		int temp = arr[i];
		arr[i] = arr[j];
		arr[j] = temp;
	}
} 

