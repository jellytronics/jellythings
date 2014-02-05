public class TestComplexV2 {

	public static void main(String[] args) {
		// Testing ComplexPolarV2
		Complex c = new ComplexPolarV2(10.0,Math.PI/6.0);
		Complex d = new ComplexPolarV2(10.0,Math.PI/3.0);

		System.out.println("Testing ComplexPolarV2:");
		System.out.println("c is " +  c);
		System.out.println("d is " +  d);
		c.add(d);
		System.out.println("c=c+d is " +  c);
		c.minus(d);
		System.out.println("c-d (which is the original c) is " + c);
		c.times(d);
		System.out.println("c=c*d is " + c);
	}
}

