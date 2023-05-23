package ex0519;

import java.util.Scanner;

public class Ex05_산술연산자예제2 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.println("input num : ");
		int num = sc.nextInt();
		
		// int result = num - num % 100;
		int result = num / 100 * 100;
		
		System.out.println("결과 값 : " + result);

	}

}
