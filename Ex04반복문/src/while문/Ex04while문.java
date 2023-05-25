package while문;

import java.util.Scanner;

public class Ex04while문 {

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		int even = 0;
		int odd = 0;
		while(true)
		{
			System.out.print("숫자 입력 : ");
			int num = sc.nextInt();
			
			if(num == -1) {
				System.out.println("종료되었습니다.");
				break;
			}
			
			even = num % 2 ==0 ? ++even : even;
			odd = num % 2 ==1 ? ++odd : odd;

			
			System.out.println("짝수 개수 : " + even);
			System.out.println("홀수 개수 : " + odd);
			System.out.println();
			
		}
		sc.close();
		
		
		
		
		
		
		
		
		

	}

}
