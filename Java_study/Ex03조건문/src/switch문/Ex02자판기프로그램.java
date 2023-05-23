package switch문;

import java.util.Scanner;

public class Ex02자판기프로그램 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.print("금액을 입력하세요 : ");
		int money = sc.nextInt();

		System.out.println("");

		do {
			System.out.println("메뉴를 고르세요.");
			System.out.print("1.이구동성(700원) 2.썬칩(1000원) 3.뽀빠이(500원) >> ");
			int num = sc.nextInt();
			

			if (num == 1) {
				money -= 700;
				if (money < 0) {
					money += 700;
					System.out.println("돈이 부족해요 ㅠㅠ");
				}
				break;
			} 
			
			else if (num == 2) {
				money -= 1000;
				if (money < 0) {
					money += 1000;
					System.out.println("돈이 부족해요 ㅠㅠ");

				}
				break;
			} 
			
			else if (num == 3) {
				money -= 500;
				if (money < 0) {
					money += 500;
					System.out.println("돈이 부족해요 ㅠㅠ");
				}
				break;
			} 
			
			else {
				System.out.println("잘 못 눌렀습니다.");
				System.out.println();
			}
			
		} while (true);

		System.out.println("잔돈 : " + money);
		int bill = money / 1000;
		System.out.println("천원 : " + bill + "개");
		sc.close();
	}

}
