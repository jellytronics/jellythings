import java.util.Vector;

public class TestVector {

	public static void main(String[] args) {

		Vector<String> courses;

		courses = new Vector<String>();

		courses.add("CS1020");
		courses.add(0, "CS1010");
		courses.add("CS2010");

		System.out.println(courses);
		System.out.println("At index 0: " + courses.get(0));

		if (courses.contains("CS1020"))
			System.out.println("CS1020 is in courses");

		courses.remove("CS1020");
		for (String c: courses)
			System.out.println(c);
	}
}

