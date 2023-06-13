package Ex03인터페이스;

public interface Ex01 {
	// 추상클래스와 비슷
	// 어떠한 클래스들을 설계할 때, 필수적인 내용을 명시하는 용도로 쓰인다.
	
	// interface는 추상메서드를 정의할 때, abstract 키워드를 생략가능
	// interface 안에서는 메서드를 구현할 수 없다.
	
	// 변수(필드) 선언시, 상수로 적용
	// 그래서 값을 집어넣어야한다.
	int a = 3;
	
	public void print();
	
}	
