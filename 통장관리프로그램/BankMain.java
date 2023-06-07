package 통장관리프로그램;

import java.util.Scanner;

public class BankMain {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		// 실행공간
		// BankBook자료형 b1 객체 생성
		// BankBook설계도를 기반으로 b1 객체생성
		// 자료형 객체명 = new 자료형();
		// 자료형 --> 클래스 명

		BankBook b1 = new BankBook();

		System.out.print("입금할 금액 입력 >> ");
		b1.deposit(sc.nextInt());
		b1.showMoney();

		System.out.print("입금할 금액 입력 >> ");
		b1.deposit(sc.nextInt());
		b1.showMoney();
		System.out.print("출금할 금액 입력 >> ");
		b1.withdraw(sc.nextInt());
		b1.showMoney();

		sc.close();

	}

}
