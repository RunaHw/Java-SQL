package for문;

import java.util.Scanner;

public class Ex07for문예제 {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);
		System.out.print("숫자를 입력해 주세요 : ");
		int num = sc.nextInt();
		int sum = 0;
		int subNum = num;

		for (int i = 1; i <= num; i++) {
			sum += subNum * i;
			subNum--;
		}
		System.out.println(sum);
		sc.close();

	}

}
