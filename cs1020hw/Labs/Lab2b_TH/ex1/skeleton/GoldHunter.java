// CS1020 (AY2013/4 Semester 2)
// Take-home lab #2
// Name: Wong Say Juan, Jeremias
// Matric. No.: A0066754W
// Lab group: 2
// Write the program description below.
// It is mandatory to write program description at the top of every program.
// Marks will be awarded for this in sit-in labs.
// Please remove this line and its preceding 3 lines.

import java.util.*;

public class GoldHunter {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);
		MyMap map = new MyMap(sc);

		// To check before anything is done.
		// Remove the statement below after you have tested your program.
		//map.display();

		// Fill in the code below
		getGold(map);

		map.display();


	}

	public static void getGold(MyMap map){
		for (int i = 0; i < map.getNumRow(); i++){
			for (int j = 0; j < map.getNumCol(); j++){
				countMines(map, i, j);
			}
		}
	}

	public static void countMines(MyMap map, int row, int col){

		int gold = 0;

		for (int i = row - 1; i < row + 2; i++){
			for (int j = col - 1; j < col + 2; j++){
				if (map.indexWithinRange(i,j)){
					if (map.getLabel(i, j) == '*'){
						if (i == row && j == col){
							map.setGoldVal(row, col, -1);
							return;
						}else{
							gold++;
						}
					}
				}
			}
		}

		map.setGoldVal(row, col, gold);
	}

	// Note: You should add some methods in this program.
	//       You should not do all the work in the main() method above.

}

