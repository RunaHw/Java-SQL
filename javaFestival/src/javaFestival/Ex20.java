package javaFestival;

import java.util.Scanner;

public class Ex20 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int thNum = 1;
		int[] numArr = new int [10];
		
		for (int i = 0; i < numArr.length; i++) {
			System.out.print((thNum++)+"번 째 정수 입력>>");
			numArr[i] = sc.nextInt();
		}
		System.out.print("3의 배수 : ");
		for (int i = 0; i < numArr.length; i++) {
			if(numArr[i] % 3 ==0) {
				System.out.print(numArr[i] + " ");
			}
		}
		sc.close();

	}

}
