package while문;

import java.util.Scanner;

public class Ex03while문 {

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		int acc = 0;
		
		while(true) {
			System.out.print("정수 입력 : ");
			int num = sc.nextInt();
			acc += num;
			System.out.println("누적 결과 : " + acc);
			
			if(num == -1) {
				System.out.println("종료되었습니다.");
				break;
				
			}
			
		}
		sc.close();
		
		
		
		
		
		

	}

}
