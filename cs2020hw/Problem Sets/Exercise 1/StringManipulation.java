package exercises.cs2020;

/**
 * Rules:
 * The instructions input contains one of three commands (join, inner, outer).  
 * The command can be in upper or lower case, or mixed case.  If the instructions input
 * contains no command, or more than one command, the method should return the string "ERROR".
 * This error requirement should take priority over all others.
 * 
 * If the command is "join", then the output should be the concatenation of the two strings.  For example,
 * if the two strings are "xyz" and "123" then the joined output is "xyz123".
 * 
 * If the command is inner or outer, then the instruction string will also contains a single digit in the
 * range of [0,1,3, ..., 9].  If the instruction string contains no digits or more than one digit, then
 * it should return the string "NO_NUMBER".  
 * 
 * Let d be the digit in the command.
 * 
 * If the command is outer, then the method should return the first d characters of the first string and the 
 * last d characters of the second string.  For example, if d=2, and the strings are xyz and 123, then
 * the method should return xy23.
 * 
 * If the command is inner, the the method should return the last d characters of the first string and the 
 * first d characters of the second string.  For example, if d=2, and the strings are xyz and 123, then
 * the method should return yz12.
 * 
 * If either string is not long enough (i.e., contains less than d characters), then the entire string should be included.
 * For example, if d=4 and the strings are xyz and 123, then the method should return xyz123 (for either command inner
 * or outer).
 *
 */
public class StringManipulation {
	
	
	/**
	 * InstructionSearch
	 * @param instructions
	 * @param first
	 * @param second
	 * @return a string composed of parts of the first and second string, according to the instructions (above).
	 */
	public static String InstructionSearch(String instructions, String first, String second){
	// Missing code here	
	}
}
