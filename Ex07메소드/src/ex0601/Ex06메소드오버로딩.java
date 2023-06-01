package ex0601;

public class Ex06메소드오버로딩 {

	public static void main(String[] args) {

		// 메소드 오버로딩이란?
		// 메소드의 이름은 같지만 매개변수를 다르게 함으로써
		// 서로 다른 메소드를 만드는 기법
		
		// 메소드 오버로딩(=중복정의)
		// 매개변수의 개수를 다르게하고, 메소드 이름은 똑같이 부여
	    System.out.printf("%.2f", add(3.25,3));
	    System.out.println();
		System.out.println(add(3,5,8)); 
		
		
		
	}
	
	// 메소드 오버로딩 성립 조건
	// 1. 이름이 같아야한다.
	// 2. 매개변수의 개수 또는 자료형(데이터 타입)이 달라야한다.
	// 3. 매개변수와 메소드 이름이 동일하고 리턴타입만 다른경우는 오버로딩이 아니다.
	
	public static int add(int num1, int num2) {
		return num1+num2;
	}
	public static double add(double num1, double num2) {
		return num1+num2;
	}
	public static double add(double num1, int num2) {
		return num1+num2;
	}
	public static double add(int num1, double num2) {
		return num1+num2;
	}
	public static int add(int num1, int num2, int num3) {
		return num1+num2+num3;
	}
	
	
	

}
