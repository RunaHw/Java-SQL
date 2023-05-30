package ex0526;

import java.util.Random;
import java.util.Scanner;

public class 배열예제03another {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		Random ran = new Random();
		System.out.println("====로또타임====");
		System.out.println("이번주 출력번호는요...!!두구두구두구!!!");
		int[] arr = new int[5];

		for (int i = 0; i < arr.length; i++) {
			arr[i] = ran.nextInt(10) + 1;
			for (int j = 0; j < i; j++) {
				if (arr[i] == arr[j]) {
					i--;
				}
			}
		}

		for (int i = 0; i < arr.length; i++) {
			System.out.print(arr[i] + " ");
		}
		sc.close();

	}

}