package javaFestivla03;

import java.util.Scanner;

public class Ex04 {

	public static void main(String[] args) {
		
		Scanner sc =  new Scanner(System.in);
		System.out.print("숫자를 입력해 주세요 : ");
		int num = sc.nextInt();
		int inc = 1;
		int result = 0;
		
		for(int i = 0; i<num; ) {
			result = inc;
			System.out.print(result + " ");
			i++;
			inc += i;
			
		}
		sc.close();
		
	}

}
