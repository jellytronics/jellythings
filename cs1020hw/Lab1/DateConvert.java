// CS1020 (AY2012/3 Semester 2)
// Name: Wong Say Juan Jeremias
// Matric. No.: A0066754W
// Lab group: 2
// Write the program description below.
// It is mandatory to write program description at the top of every program.
// Marks will be awarded for this in sit-in labs.
// Please remove this line and its preceding 3 lines.

import java.util.*;

public class DateConvert {

	//	There are two common formats used for a date. For example “December 25, 2012” is more 
	//	commonly used in the UK, whereas “25 December 2012” is more popular with the Americans. 
	//	Write a program DateConvert.java that reads a string in the UK date format and outputs the 
	//	equivalent American format, and also whether the year is a leap year. 
	//	The input consists of the month, a space, the day, a comma, a space, and the year. You may 
	//	assume that all inputs follow this format, and that the input date is a valid date. 
	//	You are to define a class method isLeapYear(int) that takes in an integer parameter which 
	//	represents the year, and returns true if it is a leap year, or false otherwise. A year is a leap year 
	//	if it satisfies one of the following two conditions (this has been covered in CS1010): 
	//	 It is divisible by 400; or 
	//	 It is divisible by 4 but not by 100 
	//	For example, 2012, 1996, and 2000 are leap years, but 1998, 2013, 2100 and 2200 are not. 
	//	Note that you are not allowed to use the Date class, the SimpleDateFormat class or any other 
	//	date formatter class in the API. 
	//	Hint: After extracting the year from the input date (eg: “December 25, 2012”) into a String 
	//	variable say yearStr (“2012”), it needs to be converted into an integer (2012) to be passed 
	//	into the isLeapYear(int) function. To do this, you may use the valueOf() method in the Integer 
	//	class (read up Integer class on the API) as follows: 
	//	 int year = Integer.valueOf(yearStr); 
	//	 
	//	Sample runs: 
	//	Enter date in UK format: December 25, 2012 
	//	Date in American format: 25 December 2012 
	//	2012 is a leap year. 
	//	 
	//	Enter date in UK format: March 7, 2013 
	//	Date in American format: 7 March 2013 
	//	2013 is not a leap year. 

	public static void main(String[] args) {

		String month;
		String sdate, syear;
		int date, year;
		Scanner sc = new Scanner(System.in);
		System.out.print("Enter date in UK format: ");
		month = sc.next();
		sdate = sc.next();
		sdate = sdate.replaceAll("[,]", "");
		date = Integer.valueOf(sdate);
		syear = sc.next();
		year = Integer.valueOf(syear);


		System.out.printf("Date in American format: %d %s %d\n", date, month, year);
		if (isLeapYear(year)){
			System.out.printf("%d is a leap year.", year);
		}else{
			System.out.printf("%d is not a leap year.", year);
		}

	}

	public static boolean isLeapYear(int yearyo){
		return (yearyo % 400 == 0) || (yearyo % 4 == 0 && yearyo % 100 != 0);
	}
}
