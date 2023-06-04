package javaFestival;

import java.util.Random;

public class Ex11 {

	public static void main(String[] args) {
		int[] numArr = new int[8];
		Random ran = new Random();
		int max = Integer.MIN_VALUE;
		int min = Integer.MAX_VALUE;

		System.out.print("배열에 있는 모든 값 : ");
		for (int i = 0; i < numArr.length; i++) {
			numArr[i] = ran.nextInt(100) + 1;
			max = max > numArr[i] ? max : numArr[i];
			min = min < numArr[i] ? min : numArr[i];
			System.out.print(numArr[i] + " ");
		}
		System.out.println();
		System.out.println("가장 큰 값 : " + max);
		System.out.println("가장 작은 값 : " + min);

	}

}
