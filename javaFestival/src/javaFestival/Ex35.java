package javaFestival;

import java.util.Random;
import java.util.Scanner;

public class Ex35 {

	public static void main(String[] args) {
		Random ran = new Random();
		Scanner sc = new Scanner(System.in);
		boolean right = true;
		int live = 5;
		int num1 = 0;
		int num2 = 0;
		
		while(right) {
			num1 = ran.nextInt(10)+1;
			num2 = ran.nextInt(10)+1;
			System.out.print(num1+ " + "+ num2 + " = ");
			int result = sc.nextInt();
			
			if(result == num1+num2) {
				System.out.println("SUCCESS!");
			}
			else {
				System.out.println("Fail...");
				live--;
			}
			if(live <=0) right = false;
		}
		System.out.println("GAME OVER!");
		sc.close();
	}

}
