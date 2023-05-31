package javaProject;

import java.util.Scanner;

public class ex04 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int[] star = new int[5];
		
		for (int i = 0; i < star.length; i++) {
			
			System.out.print(i + "번째 별의 수 : " );
			int num = sc.nextInt();
			star[i] = num;
		} //--배열 받는 for 구문
		
		for (int i = 0; i < star.length; i++) {
			System.out.print(star[i] + " : " );
			for(int j = 0; j <star[i]; j++) {
				System.out.print("*");
			}
			System.out.println();
		}//-- 별을 출력하는 for구문
		sc.close();
	}

}
