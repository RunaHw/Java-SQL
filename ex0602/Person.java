package ex0602;

public class Person {
	// class : 객체(Object)를 만들기 위한 설계도
	//		   하나의 설계도 당 여러개의 객체를 만들수가 있다.
	
	
	// 필드(속성, 데이터)
	// 각 요소에 맞는 데이터타입으로 변수를 선언
	// 이름, 나이, 키, 성별
	String name;
	int age;
	double height;
	char gender; 
	
	// 메소드(행동, 기능)
	
	public void walk() {
		// 필드랑 동일한 이름으로 변수를 선언할 수 있다!(가급적 피할 것)
		// 필드를 사용할 때, 색깔을 잘 확인해야함
		System.out.println(name+"가 앞으로 걷습니다.");
	}
	
	public void sleep() {
		System.out.println(name + "가 잠을 잡니다.");
	}
	
	public void talk() {
		System.out.println(name + "가 말을 하고있습니다.");
	}
	
	
	
	
}
