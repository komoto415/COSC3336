package dynamic2DArray;

import java.util.Arrays;
import java.util.Random;

public class Dynamic2DArray {
	public static int[][] multiDimenArray(int size) {
		Random random = new Random();
		int [][] array = new int[size][];
		for (int i = 0; i < size; i++) {
			int newSize = i+1;
			int [] newArray = new int[newSize];
			for (int j = 0; j < newSize; j++) {
				newArray[j] = random.nextInt(10);
			}
			array[i] = newArray;
			System.out.println(Arrays.toString(array[i]));
		}
		return array;
	}
	public static void main(String[]args) {
		Random random = new Random();
		int size = random.nextInt(11);
//		int size = 10;
		int [][] array1 = multiDimenArray(size);
//		System.out.println(Arrays.deepToString(array1));
	}
}
