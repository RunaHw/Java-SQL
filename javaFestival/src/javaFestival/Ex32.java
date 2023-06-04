package javaFestival;

import java.util.Scanner;

public class Ex32 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.println("==== 채점하기 ====");
		String scoring = sc.next();
		String[] score = scoring.split("");
		int sum = 0;
		int point = 0;
		
		for (int i = 0; i < score.length; i++) {
			if (score[i].contains("o") || score[i].contains("O") || score[i].contains("0")) {
				sum += ++point;
			} else
				point = 0;
		}
		System.out.println(sum);
		sc.close();
	}

}
