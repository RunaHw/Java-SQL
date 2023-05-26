package ex0526;

import java.util.Arrays;


public class Ex01배열 {

	public static void main(String[] args) {

		int[] numbers = new int[5];

		System.out.println(numbers);

		numbers[2] = 2;
		System.out.println(numbers[2]);
		System.out.println(Arrays.toString(numbers));

		numbers[1] = 15;
		System.out.println(Arrays.toString(numbers));

		// index를 초과하면 에러 발생
		// numbers[3] = 20; -->> x

		// 배열의 길이
		int len = numbers.length;
		System.out.println(len);
		System.out.println("------------------------------------------------");
		// 배열의 각 칸을 5의 배수로 초기화
		for (int i = 0; i < numbers.length; i++) {
			numbers[i] = (i + 1) * numbers.length;
		}
	
			
		for (int i = 0; i < numbers.length; i++) {
			System.out.print(numbers[i] + "\t");
		}
		System.out.println();
		System.out.println("------------------------------------------------");
		System.out.println(Arrays.toString(numbers));
		
		// 배열 생성
		// 초기화하면서 생성!
		int[] numbers2 = {1, 2, 3, 4, 5};
		System.out.println(Arrays.toString(numbers2));
		
		// 배열 공유
		int[] numbers3 = numbers2.clone();
		numbers3[2] = 30;
		System.out.println(numbers2[2]);
		
		
	}

}
