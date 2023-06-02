package javaProject;

import java.util.Scanner;

public class Ex02팩토리얼 {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);
		System.out.print("입력 : ");
		int factory = sc.nextInt();
		
		System.out.println("출력 : " + fac(factory));
		sc.close();
	}
	
	public static int fac(int num) {
		int factorial = 1;
		for (int i = 1; i <= num; i++) {
			factorial *= i;
		}
		return factorial;
	}
}
