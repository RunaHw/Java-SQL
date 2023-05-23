package ifelse문;

import java.util.Scanner;

public class Ex02ifelse문 {

	public static void main(String[] args) {
		
		int i = 0;
		Scanner sc = new Scanner(System.in);
		do {
			System.out.print("점수를 입력하세요 : ");
			int grade = sc.nextInt();
			
			if(grade >= 60) {
				System.out.println("합격입니다.");
			}else {
				System.out.println("불합격입니다.");
			}
			i++;
		}while(i <=1);
		sc.close();
		
		
		
		
		
		
		
		
		

	}

}
