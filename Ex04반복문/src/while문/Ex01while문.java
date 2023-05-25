package while문;

public class Ex01while문 {

	public static void main(String[] args) {
		
		// while문 구조!!
		// hello world! 5번 출력하는 코드 작성해보기
		
		/*
		System.out.println("Hello world!" );
		System.out.println("Hello world!" );
		System.out.println("Hello world!" );
		System.out.println("Hello world!" );
		System.out.println("Hello world!" );
		*/
		
		// 반복 횟수를 카운트 해주는 num 생성하기
		int num =0;
		while(num<=4) {
			System.out.println("Hello world!" );
			num++;
		}
		System.out.println("현재 num의 값 : " + num);
		// 무한반복문
		while(true) {
			System.out.println("Hello world2222222!");
			num++;
			if(num>=10) {
				break;
			}
			
		}
		System.out.println("현재 num의 값 : " + num);
		
		
		
		
		
		
		
		
		

	}

}
