package javaFestival;

import java.util.Scanner;

public class Ex09 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.print("숫자 입력 : ");
		int num = sc.nextInt();
		int round = num%10;
		
		if(round<5) {
			System.out.print("반올림 수 : " + (num-round));
		}
		else System.out.print("반올림 수 : " + ((num-round)+10));
		sc.close();
	}

}
