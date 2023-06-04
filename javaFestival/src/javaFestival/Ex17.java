package javaFestival;

import java.util.Scanner;

public class Ex17 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.print("n 입력 : ");
		int n = sc.nextInt();
		int inc = 0;
		int result = 1;
		for (int i = 0; i < n; i++) {
			result += inc;
			System.out.print(result + " ");
			inc++;
			
		}
		sc.close();
	}

}
