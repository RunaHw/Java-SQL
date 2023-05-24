package 자바festivalProblem;

import java.util.Scanner;

public class JavaFestival_problem01 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.print("일한 시간을 입력해주세요 : ");
		int time = sc.nextInt();
		
		int pay = 5000 * time;
		if(time >8) {
			pay = 0;
			pay = 5000 * 8;
			pay += (time -8) * 5000 * 1.5;
		}

		System.out.println("총 임금은 " + pay + "원 입니다.");
		
		sc.close();
	}

}
