package javaProject;

import java.util.Scanner;

public class Ex04채점문제 {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);
		System.out.println("=== 채점하기 ====");
		
		String problem = sc.next();
		char[] exmArr =  problem.toCharArray();
		int cnt = 1;
		int sum = 0;
		
		
		for (int i = 0; i < exmArr.length; i++) {
			if(exmArr[i] == 'o' || exmArr[i] == 'O' || exmArr[i] == '0') {
				sum += cnt++;
			}
			else cnt = 1;
		}
		System.out.println(sum);
		sc.close();
	}

}
