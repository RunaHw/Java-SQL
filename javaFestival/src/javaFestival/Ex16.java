package javaFestival;

import java.util.Scanner;

public class Ex16 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.print("num을 입력해주세요 >>");
		int num = sc.nextInt();
		int cnt = 1;
		int[][] numArr = new int[num][num];
		
		for (int i = 0; i < num; i++) {
			if(i%2==0) {
				for (int j = 0; j < num; j++) {
					numArr[i][j] =cnt++;
				}
			}
			else {
				for (int j = num-1; j >= 0; j--) {
					numArr[i][j] =cnt++;
				}
			}
		}
		for (int i = 0; i < num; i++) {
			for (int j = 0; j < num; j++) {
				System.out.print(numArr[i][j] + "\t");
			}
			System.out.println();
		}
		sc.close();
	}

}
