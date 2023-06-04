package javaFestival;

import java.util.Arrays;

public class Ex25 {

	public static void main(String[] args) {
		int[] point = {11, 2, 6, 5};
		int mindiff = Integer.MAX_VALUE;
		int[] result = new int[2];
		
		for (int i = 0; i < point.length; i++) {
			for (int j = i+1; j < point.length; j++) {
				int diff = point[j] - point[i];
				if(diff < 0) {
					diff = -diff;
				}
				if(diff < mindiff) {
					mindiff = diff;
					result[0] = i;
					result[1] = j;
				}
			}
		}
		System.out.println("result = "+ Arrays.toString(result));

	}

}
