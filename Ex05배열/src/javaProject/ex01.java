package javaProject;


import java.util.Random;

public class ex01 {

	public static void main(String[] args) {
		Random ran = new Random();
		int max = 0;
		int min = 100;
		
		int[] arr = new int[8];
		
		for (int i = 0; i < arr.length; i++) {
			arr[i]= ran.nextInt(100)+1;
			max = max > arr[i] ? max : arr[i];
			min = min < arr[i] ? min : arr[i];
			for(int j=0; j<i; j++) {
				if(arr[i]==arr[j]) i--;
			}
		}
		
		System.out.print("배열에 있는 모든 값 : ");
		for (int i = 0; i < arr.length; i++) {
			System.out.print(arr[i]+ " ");
		}
		System.out.println();
		System.out.println("가장 큰 값 : " + max);
		System.out.println("가장 작은 값 : " + min);
		
		
		
		
	}

}
