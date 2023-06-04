package javaFestival;

import java.util.Scanner;

public class Ex01 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.print("현재몸무게 : ");
		int nowKg = sc.nextInt();
		System.out.print("목표몸무게 : ");
		int willKg = sc.nextInt();
		int week = 1;

		while (nowKg >= willKg) {
			System.out.print(week++ + "주차 감량 몸무게 : ");
			int rdc = sc.nextInt();
			nowKg -= rdc;
		}
		System.out.println(nowKg + "kg 달성!! 축하합니다!");
		sc.close();

	}

}
