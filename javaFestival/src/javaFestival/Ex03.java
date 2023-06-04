package javaFestival;

public class Ex03 {

	public static void main(String[] args) {
		int result = 0;
		
		for (int i = 1; i < 101; i++) {
			if(i%2==0) {
				result += i*-1;
				System.out.print(i*-1 + " ");
			}
			else {
				result += i;
				System.out.print(i + " ");
			}
		}
		System.out.println();
		System.out.println("결과 : " + result);
	}

}
