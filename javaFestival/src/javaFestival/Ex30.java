package javaFestival;

import java.util.Scanner;

public class Ex30 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int[] numArr = new int [10];
		int[] dash = {6,2,5,5,4,5,6,3,7,6};
		int sum =0;
		
		for (int i = 0; i < numArr.length; i++) {
			numArr[i] = i;
		}
		System.out.print("첫자리 0을 제외한 숫자를 입력해주세요 >> ");
		String str = sc.next();
		String[] strArr = str.split("");
		
		for (int i = 0; i < strArr.length; i++) {
			for (int j = 0; j < numArr.length; j++) {
				if(Integer.parseInt(strArr[i]) == numArr[j]) {
					sum += dash[j];
				}
			}
		}
		System.out.println("대시('-')의 총 합 >> " + sum);
		sc.close();
	}

}
