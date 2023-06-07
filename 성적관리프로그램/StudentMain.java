package 성적관리프로그램;

public class StudentMain {

	public static void main(String[] args) {
		
		// 실행 공간
		// Student 자료형을 가진 s1이라는 객체 생성
		Student s1 = new Student("박현우", "20220458", 27, 100, 80, 35);
		Student s2 = new Student();
		Student s3 = new Student("박현우", "20230517", 27);
		// 생성자(constructor)
		// : new 객체 생성하는 순간에 사용되는 메소드
		// : 기본 생성자(매개 변수로 아무것도 받지않는 생성자 메소드)
		// : 기본 생성자는 생략이 가능하다.
		
		System.out.println(s1.getName());
		s1.setName("Runa");
		System.out.println(s1.getName());
		
		s1.studentPf();
		s2.studentPf();
		
		
		
		
		
		
		
		
	}

}
