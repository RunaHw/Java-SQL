package for문;

public class Ex01for문기초 {

	public static void main(String[] args) {

		// for문 구조
		// 1부터 10까지 출력

		/*
		 * System.out.println(1); System.out.println(2); System.out.println(3);
		 * System.out.println(4); System.out.println(5); System.out.println(6);
		 * System.out.println(7); System.out.println(8); System.out.println(9);
		 * System.out.println(10);
		 */

		for (int i = 1; i <= 10; i++) {
			System.out.print(i + " ");
		}
		System.out.println();
		System.out.println("================================================");
		//52 부터 21까지 출력
		for( int i = 52; i>= 21; i--) {
			System.out.print(i + " ");
		}

	}

}
