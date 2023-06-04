package javaFestival;

import java.util.Scanner;

public class Ex02 {

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		System.out.print("일한시간을 입력하세요 : ");
		int workTime = sc.nextInt();
		int pay = 0;
		if(workTime <= 8) {
			pay = 5000 * workTime;
		}
		else if(workTime > 8) {
			pay = 5000 * 8;
			workTime -= 8;
			pay += 5000 * 1.5 * workTime;
		}
		System.out.println("총 임금은 " + pay + "원 입니다.");
		sc.close();
	}


}
