package javaFestival;

import java.util.Scanner;

public class Ex08 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		boolean zero = true;
		
		while(zero) {
			System.out.print("A 입력 >> ");
			int A = sc.nextInt();
			System.out.print("B 입력 >> ");
			int B = sc.nextInt();
			System.out.print("결과 >> " + (A-B));
			System.out.println();
			if(A==0 && B==0) zero=false;
		}
		sc.close();
		

	}

}
