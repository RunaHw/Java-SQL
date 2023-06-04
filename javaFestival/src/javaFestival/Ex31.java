package javaFestival;

import java.util.Scanner;

public class Ex31 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.print("첫 번째 숫자 입력 >> ");
		int num1 =sc.nextInt();
		System.out.print("두 번째 숫자 입력 >> ");
		int num2 =sc.nextInt();
		int num3 = num2;

		System.out.println(num1*(num2%10));
		num2 -= num2%10;
		System.out.println(num1*((num2%100)/10));
		num2 -= num2%100;
		System.out.println(num1*((num2/100)));
		System.out.println(num1*num3);
		sc.close();
	}

}
