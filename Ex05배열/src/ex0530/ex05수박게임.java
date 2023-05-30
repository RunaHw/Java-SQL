package ex0530;

import java.util.Scanner;

public class ex05수박게임 {

	public static void main(String[] args) {
		char[] data = {'수', '박'};
		Scanner sc = new Scanner(System.in);
		System.out.println("====수박 게임 start~!====");
		System.out.print("숫자를 입력하세요 >>> ");
		int num = sc.nextInt(); //숫자 입력 받기
		int div = 0; // i가 홀수이면 '박' 짝수이면 '수'
		
		for (int i = 0; i < num; i++) {
			div = i %2;
			System.out.print(data[div]);
		}
		sc.close();
		
		
		
		
	}

}
