package javaFestival;

import java.util.Scanner;

public class Ex18 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.print("정수 입력 : ");
		String numString = sc.next();
		String[] numbers = numString.split("");
		int sum = 0;
		for (int i = 0; i < numbers.length; i++) {

			int n = Integer.parseInt(numbers[i]);
			sum += n;
		}
		System.out.println("합은 " + sum + "입니다.");
		sc.close();
	}

}
