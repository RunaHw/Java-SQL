package while문;

import java.util.Scanner;

public class JavaProject01 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.print("현재몸무게 : ");
		int nowKg = sc.nextInt(); // 현재 몸무게
		System.out.print("현재몸무게 : ");
		int willKg = sc.nextInt(); //목표 몸무게
		int week = 1; //주차
		
		while(true) {
			System.out.print(week + "주차 감량 몸무게 : ");
			int disKg = sc.nextInt(); //감량 몸무게
			nowKg -= disKg;
			if(nowKg <= willKg) {
				System.out.println(nowKg + "kg 달성!! 축하합니다!");
				break;
			
			}
			week++;
		}
		sc.close();

	}

}
