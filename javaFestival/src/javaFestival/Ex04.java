package javaFestival;

import java.util.Scanner;

public class Ex04 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.print("총금액 입력: ");
		int money = sc.nextInt();
		System.out.println("잔돈: " + money + "원");
		
		int[] mArr = {10000, 5000, 1000, 500, 100 };
		int[] counts = new int[5];
		
		for (int i = 0; i < mArr.length; i++) {
			counts[i] = money / mArr[i];
			money -= counts[i] * mArr[i];
		}
		System.out.println("10000원: " + counts[0] + "개");
		System.out.println("5000원: " + counts[1] + "개");
		System.out.println("1000원: " + counts[2] + "개");
		System.out.println("500원: " + counts[3] + "개");
		System.out.println("100원: " + counts[4] + "개");
		sc.close();
	}

}
