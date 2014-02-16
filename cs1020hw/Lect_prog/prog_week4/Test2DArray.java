// Test out 2D array
public class Test2DArray {

	public static void main(String[] args) {

		int[][] array2D = { {4, 5, 2}, {1, 3}, {7, 1, 5, 6} };

		System.out.println("array2D.length = " + array2D.length);
		for (int i = 0; i < array2D.length; i++)
			System.out.println("array2D[" + i + "].length = " 
					+ array2D[i].length);

		for (int row = 0; row < array2D.length; row++) {
			for (int col = 0; col < array2D[row].length; col++)
				System.out.print(array2D[row][col] + " ");
			System.out.println();
		}
	}
}
