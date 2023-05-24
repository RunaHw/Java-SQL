package 자바festivalProblem;

import java.util.Scanner;

public class JavaFestival_problem03 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.print("숫자 입력 : ");
		int num = sc.nextInt();
		int value = num % 10;
		if (value >= 5) {
			num = num/10 *10;
			num += 10;
		}else {
			num = num/10 *10;
		}
		System.out.println("반 올림 수 : " + num );
		sc.close();
	}

}
