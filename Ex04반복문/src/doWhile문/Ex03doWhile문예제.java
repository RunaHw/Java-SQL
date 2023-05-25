package doWhile문;

import java.util.Random;
import java.util.Scanner;

public class Ex03doWhile문예제 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		Random ran = new Random();
		boolean question = true;
		System.out.println("===Plus Game===");
		do {
			
		int ran1 = ran.nextInt(10)+1;
		int ran2 = ran.nextInt(10)+1;
		
		
		System.out.print(ran1 + "+" + ran2 + "=");
		int sum = sc.nextInt();
		if(sum == ran1 + ran2) {
			System.out.println("Success");
		}
		else if(sum != ran1 + ran2){
			System.out.println("Fail");
			System.out.print("계속 하시겠습니까? >> ");
			String con = sc.next();
			// String 타입은 기본형이 아닌 특이한 애
			// 그래서 비교하기 위해서는 .equals()사용	
			if( con.equals("Y") || con.equals("y")) {
				;
			}
			else if(con.equals("N") || con.equals("n")) question = false;
			else {
				System.out.println("잘 못 입력했습니다."); 
				question = false;
			}
		}
		else {
			System.out.println("잘 못입력했습니다.");
		}
		}while(question);
		System.out.println("종료합니다.");
		sc.close();

	}

}
