package ex0530;

import java.util.Random;

public class ex04배열예제3 {

	public static void main(String[] args) {
		Random ran = new Random();
		int[] numbers = new int[5];
		System.out.println("====로또타임====");
		System.out.println("이번주 출력번호는요...!!두구두구두구!!!");

		for (int i = 0; i < numbers.length; i++) {
			numbers[i] = ran.nextInt(10) + 1;
			for (int j = 0; j < i; j++) {
				if (numbers[i] == numbers[j]) {
					i--;
				}
			}

		}

		for (int i = 0; i < numbers.length; i++) {
			System.out.print(numbers[i] + " ");
		}

	}

}
