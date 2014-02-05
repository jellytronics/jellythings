// Testing the DecimalFormat class
import java.text.DecimalFormat;

public class TestDecimalFormat {

	public static void main(String[] args) {
		DecimalFormat df1 = new DecimalFormat("0.000"); // 3 dec. pl.	
		DecimalFormat df2 = new DecimalFormat("#.###"); 
		DecimalFormat df3 = new DecimalFormat("0.00%");

		System.out.println("PI = " + df1.format(Math.PI));
		System.out.println("12.3 formatted with \"0.000\" = " 
		                   + df1.format(12.3));
		System.out.println("12.3 formatted with \"#.###\" = " 
		                   + df2.format(12.3));
		System.out.println("12.3 formatted with \"0.00%\" = " 
		                   + df3.format(12.3));
	}
} 

