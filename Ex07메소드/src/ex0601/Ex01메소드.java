package ex0601;

public class Ex01메소드 {

	// 메소드
	// void : 리턴을 하지 않겠다
	public static void main(String[] args) {


		System.out.println(addNumber(10, 1));

		
		
	}
	
	// 메소드 : 여러줄의 코드르 하나로 묶어놓은 것
	//		   반복된 코드르 줄이고, 유지보수를 용이하게 하기 위해
	// public : 접근제한자... (객체지향) 
	// 리턴 타입 : 메소드를 실행했을 때, 리턴하는 결과 값의 자료형
	// 메소드 이름 : 메소드 이름은 소문자로 시작
	// 매개변수 : 메소드 실행에 필요한 입력 값
	// return : 메소드 실행 결과 반환
	
	public static int addNumber(int num1, int num2 ) {
		System.out.println("두 수를 더하는 메소드 실행");
		int result = num1 + num2;
		return result;
	}

}
