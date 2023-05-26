package ex0526;

import java.util.Arrays;
import java.util.Random;
import java.util.Scanner;

public class Ex03배열예제2 {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);
		Random ran = new Random();

		int[] arr = new int[5];
		int bigNum = 0;

		for (int i = 0; i < arr.length; i++) {
			arr[i] = ran.nextInt(10) + 1;
		}
		for (int i = 0; i < arr.length; i++) {
			bigNum = bigNum > arr[i] ? bigNum : arr[i];
		}
		System.out.println("배열 안에 들어있는 값 : " + Arrays.toString(arr));
		System.out.println("가장 큰 값은 " + bigNum + "입니다.");
		sc.close();

	}

}
