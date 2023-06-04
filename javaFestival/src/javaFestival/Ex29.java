package javaFestival;

import java.util.Scanner;

public class Ex29 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.print("N 입력 >> ");
		int N = sc.nextInt();
		System.out.print("X 입력 >> ");
		int X = sc.nextInt();
		int [] lessNum = new int[N];
		

		for (int i = 1; i <= N; i++) {
			System.out.print(i+"번째 정수 입력 >> ");
			lessNum[i-1] = sc.nextInt();
		}
		System.out.print("결과 >> ");
		for (int i = 0; i < lessNum.length; i++) {
			if(lessNum[i] < X) System.out.print(lessNum[i]+ " ");
		}
		sc.close();
	}

}
