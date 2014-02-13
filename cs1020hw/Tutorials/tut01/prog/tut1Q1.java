// tut1Q1.java
import java.util.*;

public class tut1Q1 {

	public static void main(String[] args) {
		Scanner Input = new Scanner(System.in);

		System.out.print("Enter length of box: ");
		int BOX_LENGTH = Input.nextInt();
		System.out.print("Enter width of box : ");
		int BOX_WIDTH = Input.nextInt();
		System.out.print("Enter volume of box: ");
		int BOX_VOL = Input.nextInt();

		double BOX_HEIGHT = ComputeHeight(BOX_LENGTH, BOX_WIDTH, BOX_VOL);
		System.out.println("Height of box = " + BOX_HEIGHT);
	}

	public double ComputeHeight(int aa, int bb, int cc) {
		return cc / (aa * bb);
	}
}

