package 월급계산프로그램;

public abstract class Employee {
	
	// public : 모든! 같은 프로젝트 내라면 누구나!
	// protected : 패키지 내에서, 상속관계에 있는 경우
	// default : 패키지 내에서
	// private : 하나의 파일 내에서
	
	protected String empno; // 사번
	protected String name; // 이름
	protected int pay; // 일당

	public Employee(String empno, String name, int pay) {
		this.empno = empno;
		this.name = name;
		this.pay = pay;
	}

	public abstract int getMoneyPay() ;
	
	public abstract String print() ;
}
