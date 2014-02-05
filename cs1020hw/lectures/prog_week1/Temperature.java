// Temperature.java
// This program converts a certain temperature from
// Fahrenheit degree to Celsius degree.

import java.lang.*;

public class Temperature {

	public static void main(String[] args) {

		double fahrenheit, celsius;

		fahrenheit = 123.5;
		celsius = (5.0/9) * (fahrenheit - 32);
		System.out.println("Celsius: " + celsius);

	}

}
