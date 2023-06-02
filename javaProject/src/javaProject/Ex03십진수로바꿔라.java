package javaProject;

public class Ex03십진수로바꿔라 {

	public static void main(String[] args) {
		
		String str = "01011000";
		int deci = Integer.parseInt(str, 2);
		System.out.println(str+"(2) = " + deci+"(10)");
	}

}
