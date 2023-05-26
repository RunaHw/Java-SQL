package ex0526;

import java.util.Random;

public class Ex02배열예제1 {

	public static void main(String[] args) {
		Random ran = new Random();
		int[] arr = new int[5];
		int count =0;
		
		System.out.print("array에 들어있는 홀수는 ");
		for(int i = 0; i <arr.length; i++) {
			int num = ran.nextInt(100)+1;
			arr[i] = num;
			if(arr[i]%2 ==1) {
				System.out.print(arr[i] + " ");
				count++;
			}
		}
		System.out.print(" 이며,\n총" + count + "개 입니다.");
	}

}
