package switch문;

import java.util.Scanner;

public class Ex01switch문 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		for(int i = 0; i <= 2; i++)
		{

			System.out.print("점수 입력 : ");
			int totalScore = sc.nextInt();
			char grade = 'A';
			
			
			switch(totalScore/10) {
			case 10:
			case 9 :	
				grade = 'A';
				break;
			case 8 :	
				grade = 'B';
				break;
			case 7 :
				grade = 'C';
				break;
			default :
				grade = 'D';
				break;
			}
			
			System.out.println(grade + " 학점입니다.");
			sc.close();
		}
		
		
		
			
			
		
		
	}

}
