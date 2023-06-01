package ex0601;

import java.util.Scanner;

public class Ex04메소드예제3 {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		System.out.print("정수 입력 : ");
		int num1 = sc.nextInt();
		System.out.print("정수 입력 : ");
		int num2 = sc.nextInt();
		int result = close10(num1, num2);
		System.out.println("10에 가까운 수 : " + result);
		sc.close();
	}

	public static int close10(int num1, int num2) {
		int close1 = num1 > 10 ? num1-10 : 10-num1;
		int close2 = num2 > 10 ? num2-10 : 10-num2;
		return close1 < close2 ? num1 : close1 == close2 ? 0 : num2;
	}

}
