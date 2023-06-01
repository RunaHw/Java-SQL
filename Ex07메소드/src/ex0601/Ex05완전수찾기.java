package ex0601;

import java.util.Scanner;

public class Ex05완전수찾기 {

	public static void main(String[] args) {

		// 완전수
		// : 자기 자신을 제외한 약수들의 합이 자기 자신과 같은 수
		Scanner sc = new Scanner(System.in);
		System.out.print("숫자를 입력해 주세여 : ");
		int num1 = sc.nextInt();
		System.out.print("숫자를 입력해 주세여 : ");
		int num2 = sc.nextInt();
		boolean divisior = isDivisior(num1, num2);
		System.out.println(divisior);
		System.out.println(getSum(44));
		System.out.println(isPerfect(6));
		sc.close();

	}

	public static boolean isDivisior(int num1, int num2) {
		if (num1 % num2 == 0)
			return true;
		else
			return false;
	}

	public static int getSum(int num) {
		int sum = 0;
		int limit = num / 2;

		for (int i = 1; i <= limit; i++) {
			/*
			 * 기존 로직 if(num % i == 0) { sum += i; }
			 */
			// *** 메소드를 호출한 로직
			// 메소드 구조 안에서 메소드를 새롭게 구현할 수는 없으나
			// 메소드 자체를 호출하여서 사용하는 것은 가능하다!
			if (isDivisior(num, i))
				sum += i;

		}
		return sum;
	}

	public static boolean isPerfect(int num) {
		return getSum(num) == num ? true : false;
	}

}
