package while문;

import java.util.Random;
import java.util.Scanner;

public class JavaProject03 {

	public static void main(String[] args) {
		Random ran = new Random();
		Scanner sc = new Scanner(System.in);
		int count = 5; // 기회횟수
		while(true) {

			int num1 = ran.nextInt(10); // 첫번쨰 랜덤 값
			int num2 = ran.nextInt(10); // 두번째 랜덤 값

			System.out.println(num1 + " + " + num2 + " = ");
			int sum = sc.nextInt();
			if(num1 + num2 == sum) System.out.println("SUCCESS!");
			else {
				System.out.println("Fail...");
				count--;
			}
			if(count <=0) {
				System.out.println("GAME OVER!");
				break;
			
			}
		}
		sc.close();

	}

}
