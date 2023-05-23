package 단순if문;

import java.util.Scanner;

public class Ex단순if문 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int i = 0;
		do {
			System.out.print("정수를 입력하세요 : ");
			int num = sc.nextInt();
			
			if(num % 3 ==0 && num % 5 ==0) {
				System.out.println("3과 5의 배수입니다.");
			}
			i++;
		}while(i <= 1);
		sc.close();

		
		
	}

}
