package javaFestival;

public class Ex06 {

	public static void main(String[] args) {
		
		int result = 0;
		int end = 77;
		
		for (int i = 1; i <= 78; i++) {
			result += (end-- * i);
		}
		System.out.println(result);
	}

}
