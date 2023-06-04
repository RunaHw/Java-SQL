package javaFestival;

import java.util.Scanner;

public class Ex22 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int[] thNum = new int[5];
		
		for (int i = 0; i < thNum.length; i++) {
			System.out.print(i + "번째 별의 수 : ");
			thNum[i] = sc.nextInt();
		}
		for (int i = 0; i < thNum.length; i++) {
			System.out.print(thNum[i]+" : ");
			for (int j = 0; j < thNum[i]; j++) {
				System.out.print("*");
			}
			System.out.println();
		}
		sc.close();
	}

}
