package ifelse문;

import java.util.Scanner;

public class Ex03ifelse문 {

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		for(int i = 0; i<=1; i++) {
			System.out.print("나이를 입력하세요 : ");
			int age = sc.nextInt();
			System.out.print("인원수를 입력하세요 : ");
			int people = sc.nextInt();
			
			int pay = 0;
			
			if(age < 20) {
				pay = (int)(people *0.5 * 5000);
			}else {
				pay = people * 5000;

			}
			System.out.println( "총 " + pay + "원 입니다.");
		}
		sc.close();

	}

}
