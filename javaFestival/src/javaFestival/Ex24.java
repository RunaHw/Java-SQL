package javaFestival;

import java.util.Scanner;

public class Ex24 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.print("숫자입력>>");
		int num = sc.nextInt();
		int etc = num;
		int cnt =0;
		
		while(etc>0) {
			etc /= 2;
			cnt++;
		}
		
		int[] num2Arr = new int[cnt];
		for (int i = 0; i < num2Arr.length; i++) {
			num2Arr[i] = num %2 ;
			num /=2;
		}
		for (int i = num2Arr.length-1; i >= 0; i--) {
			System.out.print(num2Arr[i] + " ");
		}
		sc.close();
	}

}
