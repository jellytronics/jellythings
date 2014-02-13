public class TestString {

	public static void main(String[] args) {

		String str = "one-" + "two" + " buckle my shoe";
		System.out.println("\"one-\" + \"two\" + \" buckle my shoe\" ==>");
		System.out.println(str);
		System.out.println();

		str = 1 + 2 + " buckle my shoe";
		System.out.println("1 + 2 + \" buckle my shoe\" ==>");
		System.out.println(str);
		System.out.println();

		str = "" + 1 + 2 + " buckle my shoe";
		System.out.println("\"\" + 1 + 2 + \" buckle my shoe\" ==>");
		System.out.println(str);
		System.out.println();

		str = '1' + 2 + " buckle my shoe";
		System.out.println("'1' + 2 + \" buckle my shoe\" ==>");
		System.out.println(str);
		System.out.println();

		str = 1 + "-2" + " buckle my shoe";
		System.out.println("1 + \"-2\" + \" buckle my shoe\" ==>");
		System.out.println(str);
	}

}
