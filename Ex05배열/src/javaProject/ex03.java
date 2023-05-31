package javaProject;

import java.util.Random;

public class ex03 {

	public static void main(String[] args) {
		Random ran = new Random();
		int[] lotto = new int[6];
		
		for (int i = 0; i < lotto.length; i++) {
			lotto[i] = ran.nextInt(50)+1;
			for(int j =0; j < i; j++) {
				if(lotto[i] == lotto[j]) i--;
			} //--j구문 for
		} //-- i구문 for
		
		for (int i = 0; i < lotto.length; i++) {
			System.out.println("행운의숫자 : " + lotto[i]);
		}
		
		
	}

}
