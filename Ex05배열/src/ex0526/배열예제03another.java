package ex0526;

import java.util.Arrays;
import java.util.Random;
import java.util.Scanner;

public class 배열예제03another {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		Random ran = new Random();

		int[] arr = new int[5];

		for (int i = 0; i < arr.length; i++) {

			arr[i] = ran.nextInt(10) + 1;
			for (int j = 0; j < i; j++) {
				if (arr[i] == arr[j]) {
					i--;

				}
			}

		}
		System.out.println(Arrays.toString(arr));
		sc.close();

	}

}