/*  
 * CS1020 (AY2013/4 Sem2)  
 * Sit-in Lab #A 
 * Author    :   Wong Say Juan, Jeremias
 * Matric no.:   A0066754W
 * Lab group : 2
 * Description of program:   BLAH
 */ 

import java.util.*;

/* Getting length of longest substring without repeated characters in a string */

public class LongestSubstring {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);

		String input = sc.next();
		sc.nextLine();
		String[] array = input.split("");

		//Debug
		System.out.println(input);
		//System.out.println(input.length());
		//System.out.println(array);
		System.out.println(array.length);

		printLongestSubstring(array);

	}

	public static void printLongestSubstring(String[] array){

		int length = 0;

		for (int i = 1; i < array.length; i++){
			for (int j = i + 1; j < array.length - i; j++){
				if (array[j].equalsIgnoreCase(array[i])){
					break;
				}
				for (int k = array.length - j; k > j; k--){
					if ((k - j) > length){
						length = k - j;
					}
					if (array[j].equalsIgnoreCase(array[k])){
						i = j;
						j = array.length;
						break;
					}
				}
			}
		}

		System.out.println(length);

	}


}
