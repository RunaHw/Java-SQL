package ex0519;
import java.util.Scanner;

public class Ex05_산술연산자예제 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
			int a;
			int b;
			int sub;
		
			Scanner sc = new Scanner(System.in);
			System.out.println("첫번째 정수 입력 : ");
			a = sc.nextInt();
			System.out.println("두번째 정수 입력 : ");
			b = sc.nextInt();
			
			int sum = a+b;
			if(a>b) {
				sub = a-b;
			}
			else {
				sub = b-a;
			}
			int mul = a*b;
			double div = (double)a/b;
			
			System.out.println("더한 결과 값 : " + sum);
			System.out.println("뺀 결과 값 : " + sub);
			System.out.println("곱한 결과 값 : " + mul);
			System.out.println("나눈 결과 값 : " + div);
			// System.out.printf("나눈 결과 값 : %.3f", div);
			
			
	}

}
