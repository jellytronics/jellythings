// Returning an array from a method.
public class TestArray4 {

	public static void main(String[] args) {
		double[] values;

		values = makeArray(5, 999.0);

		for (double value: values) {
			System.out.println(value + " ");
		}
	}

	// To create an array and return it to caller
	public static double[] makeArray(int size, double limit) {
		double[] arr = new double[size];

		for (int i=0; i < arr.length; i++)
			arr[i] = limit/(i+1);

		return arr;
	}
} 

