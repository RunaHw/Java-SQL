package javaFestival;

import java.util.Random;

public class Ex21 {

	public static void main(String[] args) {
		Random ran = new Random();
		int[] lotto = new int[5];
		
		for (int i = 0; i < lotto.length; i++) {
			lotto[i] = ran.nextInt(50)+1;
			for (int j = 0; j < i; j++) {
				if(lotto[i]==lotto[j])i--;
					
			}
		}
		for (int i = 0; i < lotto.length; i++) {
			System.out.println("행운의숫자 : " + lotto[i]);
		}
	}

}
