package javaProject;

import java.util.Scanner;

public class ex06 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		String scr;
		scr = sc.next();
		char[] scoring = scr.toCharArray();
		int cnt = 0;
		int result = 0;

		for (int i = 0; i < scoring.length; i++) {
			if (scoring[i] == 'o' || scoring[i] == 'O' || scoring[i] == '0') {
				result += ++cnt;
			} else
				cnt = 0;
		}

		System.out.println(result);
		sc.close();
	}

}
