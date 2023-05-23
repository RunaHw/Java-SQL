package 삼항연산자;

import java.util.Scanner;

public class Ex01삼항연산자 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.print("정수를 입력해주세요 : ");
		int num = sc.nextInt();
		
		System.out.print(num);
		boolean isE = num % 2 == 0;
		System.out.println(
				(isE ? "(은)는 짝수입니다" : "(은)는 홀수 입니다.")
				);
		
		
		sc.close();
		
		
		
		
		
		
		
	}

}