package 삼항연산자;

import java.util.Scanner;

public class Ex02삼항연산자 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int i = 0;
		do {
			System.out.print("첫 번째 정수 입력 : ");
			int num1 = sc.nextInt();
			System.out.print("두 번째 정수 입력 : ");
			int num2 = sc.nextInt();
			
			int gap = num1 > num2 ? num1 - num2 : num2 - num1; 
			
			System.out.println(gap);
			i++;
		} while(i<=1);
		
		sc.close();
	}

}
