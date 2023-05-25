package while문;

import java.util.Scanner;

public class JavaProject02 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		while(true) {
			System.out.print("A 입력 >> ");
			int A = sc.nextInt(); // A문자
			System.out.print("B 입력 >> ");
			int B = sc.nextInt(); // B문자
			System.out.println("결과 >> " + (A-B));
			if(A==0 && B ==0) break;
		}
		
		sc.close();
	}

}
