public class TestNewGenericPair {

	public static void main(String[] args) {

		NewPair<String, Integer> someone =
			new NewPair<String, Integer>("James Gosling", 55);

		System.out.println("Name: " + someone.getFirst());
		System.out.println("Age: " + someone.getSecond());
	}
}
