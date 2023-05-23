package 삼항연산자;

import java.util.Scanner;

public class Ex03삼항연산자 {

	public static void main(String[] args) {
		Scanner sc = new Scanner (System.in);
		int i = 0;
		do {
			System.out.print("농구공의 개수를 입력하세요 : ");
			int num = sc.nextInt();
			
			int box = num / 5;
			int rem = num % 5;
			box = rem > 0 ? box + 1 : box;
			
			System.out.println("필요한 상자의 수 : " + box);
			i++;
		} while(i <= 1);
		sc.close();
		
		
		
	}

}
