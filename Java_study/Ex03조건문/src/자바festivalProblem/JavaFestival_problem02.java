package 자바festivalProblem;

import java.util.Scanner;

public class JavaFestival_problem02 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.print("총 금액 입력 : ");
		int money = sc.nextInt();
		
		System.out.println("잔돈 : " + money + "원");
		int tenThousand_won = money / 10000;
		money -= tenThousand_won * 10000;
		int fiveTthousand_won = money / 5000;
		money -= fiveTthousand_won * 5000;
		int thousand_won = money / 1000;
		money -= thousand_won * 1000;
		int fiveHundred_won = money / 500;
		money -= fiveHundred_won * 500;
		int hundred_won = money / 100;
		money -= hundred_won * 100;
		System.out.println("10000원 : " + tenThousand_won + "개");
		System.out.println("5000원 : " + fiveTthousand_won + "개");
		System.out.println("1000원 : " + thousand_won + "개");
		System.out.println("500원 : " + fiveHundred_won + "개");
		System.out.println("100원 : " + hundred_won + "개"); 
		
		sc.close();

	}

}
