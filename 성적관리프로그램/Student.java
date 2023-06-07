package 성적관리프로그램;

public class Student {

	// 설계도
	// 1. 필드
	//--------------------------------------------------------------------------------------
	private String name;
	private String number;
	private int age;
	private int scoreJava;
	private int scoreWeb;
	private int scoreAndroid;
	
	// 2.생성자
	//--------------------------------------------------------------------------------------
	// 생성자 메소드 단축키 
	// alt + shift + s --> Generate constructor using fields
	// 생성자 메소드의 특징
	// 1. 기본 생성자 메소드 생략이 가능하다
	// 2. 생성자도 메소드이다.
	// 3. 리턴 타입을 적지 않는다.
	// 4. 생성자명은 class명과 동일해야 한다.
	// 5. 매개변수를 받는 새로운 생성자를 추가하는 순간
	//	  기본생성자는 덮어진다.
	
	//
	
	public Student() {
		
	}
	
	public Student(String name, String number, int age, int scoreJava, int scoreWeb, int scoreAndroid) {
		super();
		this.name = name;
		this.number = number;
		this.age = age;
		this.scoreJava = scoreJava;
		this.scoreWeb = scoreWeb;
		this.scoreAndroid = scoreAndroid;
	}
	
	
	
	public Student(String name, String number, int age) {
		super();
		this.name = name;
		this.number = number;
		this.age = age;
	}

	// 3.메소드
	//--------------------------------------------------------------------------------------
	// getter, setter 메소드 단축키
	// alt + shift + s --> Generate getters and setters
	// setter 메소드
	// : 필드에 있는 데이터를 수정할 수 있는 메소드
	public void setName(String name) {
		this.name = name;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public void setScoreJava(int scoreJava) {
		this.scoreJava= scoreJava;
	}
	public void setScoreWeb(int scoreWeb) {
		this.scoreWeb= scoreWeb;
	}
	public void setScoreAndroid(int scoreAndroid) {
		this.scoreAndroid = scoreAndroid;
	}
	
	//--------------------------------------------------------------------------------------
	// getter 메소드
	// : 필드에 있는 데이터를 가져갈 수 있는 메소드
	public String getName() {
		return name;
	}
	public String getNumber() {
		return this.number;
	}
	public int getAge() {
		return age;
	}
	public int getScoreJava() {
		return scoreJava;
	}
	public int getScoreWeb() {
		return scoreWeb;
	}
	public int getScoreAndroid() {
		return scoreAndroid;
	}
	//--------------------------------------------------------------------------------------
	public void studentPf() {
		System.out.print(getName()+ " ");
		System.out.print(getNumber()+ " ");
		System.out.print(getAge()+ " ");
		System.out.print(getScoreJava()+ " ");
		System.out.print(getScoreWeb()+ " ");
		System.out.print(getScoreAndroid()+ " ");
		System.out.println();
		
	}
	
}

