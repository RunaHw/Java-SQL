package javaFestival;

public class Ex33 {

	public static void main(String[] args) {
		int base = 10;
		int n = 2;
		int result = powerN(base, n);
		System.out.println("결과 확인 : " + result);

	}

	private static int powerN(int base, int n) {
		int sum = base;
		for (int i = 0; i < n-1; i++) {
			sum *= base;
		}
		return sum;
	}

}
