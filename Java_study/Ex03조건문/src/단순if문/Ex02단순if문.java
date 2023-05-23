package 단순if문;

import java.util.Scanner;

public class Ex02단순if문 {

	public static void main(String[] args) {
		int i = 0;
		Scanner sc = new Scanner(System.in);
		do {
			System.out.print("나이를 입력하세요 : ");
			int age = sc.nextInt();
			
			if(age >= 20) {
				System.out.println("성인입니다.");
			}
			else System.out.println("미성년입니다.");
			i++;
		}while(i<=1);
		sc.close();
		
		
		
		
		
		
		
		

	}

}
