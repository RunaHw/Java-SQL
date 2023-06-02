package javaProject;

import java.util.Arrays;
import java.util.Scanner;

public class Ex01알파벳빈도 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.println("=== 알파벳 빈도수 구하기 ===");
		System.out.print("입력>> ");
		String text = sc.nextLine();
		char[] texts = text.toCharArray();
		int alpaCount = 97;
		
		System.out.println(Arrays.toString(texts));
		
		char[] alpa = new char[26];
		int [] cnt = new int[26];
		
		for (int i = 0; i < alpa.length; i++) {
			alpa[i] = (char)alpaCount++;
			System.out.print(alpa[i] + " ");
		}
		
		for (int i = 0; i < texts.length; i++) {
			for (int j = 0; j < alpa.length; j++) {
				if(alpa[j] == texts[i]) {
					cnt[j]++;
				}
				else if(alpa[j] == texts[i]+32) {
					cnt[j]++;
				}
			}
		}
		System.out.println();
		for (int i = 0; i < alpa.length; i++) {
			System.out.println(alpa[i] + " : " + cnt[i]);
		}
		
		sc.close();
	}

}
