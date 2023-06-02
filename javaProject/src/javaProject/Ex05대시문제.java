package javaProject;

import java.util.Scanner;

public class Ex05대시문제 {

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		int[] dash = {
				6,2,5,5,4,5,6,3,7,6
		};
		
		System.out.print("첫자리 0을 제외한 숫자를 입력해주세요>> ");
		String inputNum = sc.next();
		
		char[] numChr = inputNum.toCharArray(); 
		int [] numInt = new int[numChr.length];
		for (int i = 0; i < numChr.length; i++) {
			numInt[i] = Character.getNumericValue(numChr[i]);
		}
		int sum = 0;
	
		for (int i = 0; i < numInt.length; i++) {
			for (int j = 0; j < dash.length; j++) {
				if(j== numInt[i]) sum+=dash[j];
			}
		}
		System.out.println(sum);
		sc.close();
	}

}
