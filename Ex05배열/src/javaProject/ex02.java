package javaProject;

import java.util.Scanner;

public class ex02 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		int[] multi = new int [10];
		
		for (int i = 1; i <= multi.length; i++) {
			System.out.print(i + "번 째 정수 입력>>");
			multi[i-1] = sc.nextInt();
		}
		
		System.out.print("3의 배수 : ");
		for (int i = 0; i < multi.length; i++) {
			if(multi[i] % 3 == 0) {
				System.out.print(multi[i] + " ");
			}
		}
		sc.close();
		
		
		
	}

}
