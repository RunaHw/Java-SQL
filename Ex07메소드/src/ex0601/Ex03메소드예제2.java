package ex0601;

import java.util.Scanner;

public class Ex03메소드예제2 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.print("정수1 입력 : ");
		int num1 = sc.nextInt();
		System.out.print("부호 입력 : ");
		char op = sc.next().charAt(0);
		System.out.print("정수2 입력 : ");
		int num2 = sc.nextInt();

		System.out.println(cal(num1, num2, op));
		sc.close();
	}

	public static int cal(int num1, int num2, char op) {
		if (op == '-')
			return num1 > num2 ? num1 - num2 : num2 - num1;
		else if (op == '+')
			return num1 + num2;
		else if (op == '*')
			return num1 * num2;
		else if(op == '/')
			return num1 > num2 ? num1 / num2 : num2 / num1;
		else {
			System.out.println("부호가 잘 못 되었습니다");
			return 0;
		}
	}

}
