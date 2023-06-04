package javaFestival;

import java.util.Scanner;

public class Ex27 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int num = 5;
		int[] numbers = new int[num];
		
		for (int i = 1; i <= num; i++) {
			System.out.print(i+"번째 수 입력 : ");
			numbers[i-1] = sc.nextInt();		
		}
		
		for (int i = 0; i < numbers.length; i++) {
			for (int j = 0; j < i; j++) {
				if(numbers[i] < numbers[j]) {
					int cpt = numbers[j];
					numbers[j] = numbers[i];
					numbers[i] = cpt;
				}
			}
		}
		for (int i = 0; i < numbers.length; i++) {
			System.out.print(numbers[i]+ " ");
		}
		sc.close();
	}

}
