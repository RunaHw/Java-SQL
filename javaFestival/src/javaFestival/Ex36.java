package javaFestival;

import java.util.Scanner;

public class Ex36 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.println("==== 알파벳 빈도수 구하기 ====");
		System.out.print("입력>> ");
		String sentence = sc.nextLine();
		String[] senArr = sentence.split("");
		
		String[] apb = {
				"a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k",
				"l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v",
				"w", "x", "y", "z"
		};
		String[] apbLarge = {
				"A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K",
				"L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V",
				"W", "X", "Y", "Z"
		};
		int[] cnt = new int[apb.length];
		
		
		
		for (int i = 0; i < senArr.length; i++) {
			for (int j = 0; j < apb.length; j++) {
				if(senArr[i].contains(apb[j]) ||
						senArr[i].contains(apbLarge[j])) {
					cnt[j]++;
				}
			}
		}
		for (int i = 0; i < cnt.length; i++) {
			System.out.println(apb[i]+" : " + cnt[i]);
		}
		sc.close();
	}

}
