package ex0526;

import java.util.Random;
import java.util.Scanner;

public class 배열예제3 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		Random ran = new Random();

		int[] arr = new int[5];
		int[] tenNum = new int[10];
		boolean pass = true;

		for (int i = 0; i < tenNum.length; i++) {
			tenNum[i] = i + 1;
		}
		System.out.println("====로또타임====");
		System.out.println("이번주 출력번호는요...!!두구두구두구!!!");

		for (int i = 0; i < arr.length; i++) {
			pass = true;
			do {
				int delete = ran.nextInt(10);

				if (tenNum[delete] != 0) {
					arr[i] = tenNum[delete];
					tenNum[delete] = 0;
					pass = false;
					System.out.print(arr[i] + " ");
				} else
					continue;
			} while (pass);

		}

		sc.close();
	}

}
