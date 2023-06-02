package ex0602;

import java.util.Scanner;


public class Ex01객체 {

	public static void main(String[] args) {
		
		// Scanner를 만드는 방법
		Scanner sc = new Scanner(System.in);
		
		// 객체 생성
		// new 클래스이름();
		// 클래스 == 내가 만드는 자료형
		// 생성하고자 하는 클래스 ==> 자료형
		Person p = new Person();
		System.out.println(p);
		
		Member m = new Member();
		
		// 객체 안에 데이터 채우기(객체 안의 필드에 접근하는 방법)
		// 레퍼런스변수명.필드명
		p.name = "박현우";
		p.age = 27;
		p.height = 180.5;
		System.out.println(p.name + "\n" + p.age + "\n" + p.height);
		
		// 객체가 가진 기능(메소드)실행
		p.walk();
		
		Person p2 = new Person();

		p2.name = "경남";		
		p2.walk();	
		
		//=====================================================================
		System.out.println("==================================================");
		// String이 가진 기능만 허용
		String smhrd = "스마트 인재 개발원";
		
		// 1.split(String);
		// 문자열을 매개변수를 기준으로 나누어 주는 역할
		// "스마트" , "인재", "개발원"
		String[] smhrdArr = smhrd.split(" ");

		// 2.1 substring(int)
		// int를 인덱스로 잡고 인덱스 번호부터 뒤로 쭉 출력
		System.out.println(smhrd.substring(3));
		
		// 2.2 substring(int, int)
		// 시작 index, 끝 index(포함X, 미만의 개념)
		System.out.println(smhrd.substring(3, 6));
		
		// 3. contains("문자열"); //equals("문자열");
		
		// 문자열 비교
		// == X, 
		smhrd.equals("스마트"); // false
		
		// 문자열을 포함하고 있는지 여부
		smhrd.contains("스마트"); // true
		
		
		// 각 기본 자료형은 대응하는 참조자료형(클래스)가 존재
		// int <--> Integer
		String num = "123";
		Integer a = 10;
		int number = a;
		
		
		int n = Integer.parseInt(num); 
		
		
		
	}

	
	
	
}
