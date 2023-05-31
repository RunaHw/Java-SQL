package javaProject;

import java.util.Scanner;

public class ex07 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int[] numbers = new int[5];

		for (int i = 1; i <= numbers.length; i++) {
			System.out.print(i + "번째 수 입력 : ");
			numbers[i - 1] = sc.nextInt();
		} // - 숫자5개 for구문

		for (int i = 0; i < numbers.length; i++) {
			for (int j = 0; j < i; j++) {
				if (numbers[i] < numbers[j]) {
					int tpr = numbers[j]; // --tpr은 numbers[j]의 값이 사라지지 않게 넣어주기 위한 변수
					numbers[j] = numbers[i];
					numbers[i] = tpr; // -- tpr에는 numbers[j]의 값이 들어가 있다.
				} else
					;
			}
		} // -- 정렬 for구문

		for (int i = 0; i < numbers.length; i++) {
			System.out.print(numbers[i] + " ");
		}
		sc.close();

	}

}
