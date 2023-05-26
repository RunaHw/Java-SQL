package javaFestivla03;

import java.util.Scanner;

public class Ex05 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.print("정수 입력 : ");
		int num = sc.nextInt();
		int sum = 0;
		int div = 10;
		int div2 = 1;
		
		
		for(int i = 7 ; i >= 0;i--) {
				sum += num % div /div2;				

			num -= num % div;
			div *= 10;
			div2 *=10;
		}
		System.out.println("합은 " + sum + "입니다.");
		sc.close();
		
		
		
		
	}

}
