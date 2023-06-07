package 통장관리프로그램;

public class BankBook {

	// 통장 자료형의 설계도
	private int money;
	// private --> 외부 클래스에서 접근 불가능하게 하는 접근제한자!!
	// --> 캡슐화(정보은닉)를 지켜주기 위해서 사용하는 키워드!
	
	
	public void deposit(int money) {
		this.money += money;
		// this
		// : 현재 내 클래스 자체를 의마하는 키워드
	}

	public void withdraw(int money) {
		this.money -= money;
	}

	public void showMoney() {
		System.out.println("잔액은 " + money + "원 있습니다.");
	}

}
