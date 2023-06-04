package javaFestival;

import java.util.Scanner;

public class Ex37 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.print("입력 : ");
		int input = sc.nextInt();
		int result = 1;
		int inc = 1;
		
		for (int i = 0; i < input; i++) {
			result *= inc++;
		}
		System.out.println("출력 : "+ result);
		sc.close();
	}

}
