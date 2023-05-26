package ex0519;

import java.util.Scanner;

public class Ex06산술연산자예제3 {

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		System.out.println("input second : ");
		int second = sc.nextInt();
		
		// int time = second / 3600;
		// second -= 3600 * time;
		// int min = second / 60;
		// second -= 60 * min;
		
		int min = second / 60;
		int time = min / 60;
		second %= 60;
		min %= 60;
		
		System.out.println(time + "시" + min + "분" + second + "초" );
		System.out.printf("%d시 %d분 %d초", time, min, second );
		
		

	}

}
