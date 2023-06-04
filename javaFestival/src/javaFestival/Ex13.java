package javaFestival;

import java.util.Scanner;

public class Ex13 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.print("정수 N을 입력해주세요 >>");
		int N = sc.nextInt();
		int[][] numArr = new int[N][N];
		int cnt = 1;

		for (int i = 0; i < numArr.length; i++) {
			for (int j = 0; j < numArr[0].length; j++) {
				numArr[j][i] = cnt++;
			}
		}

		for (int[] row : numArr) {
			for (int num : row) {
				System.out.print(num + "\t");
			}
			System.out.println();
		}
		sc.close();
	}

}
