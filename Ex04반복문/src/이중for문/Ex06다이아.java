package 이중for문;

public class Ex06다이아 {

	public static void main(String[] args) {
		int starCount = 1;
		int blink = 4;
		for(int i = 0; i<5; i++) {
			for(int j =0; j<blink; j++) {
				System.out.print(" ");
			}
			for(int j = 0; j<starCount;j++) {
				System.out.print("*");
			}
			System.out.println();
			starCount +=2;
			blink--;
		}
		starCount -=4;
		blink+=2;
		for(int i = 0; i<4; i++) {
			for(int j=0; j<blink; j++) {
				System.out.print(" ");
			}
			for(int j = 0; j<starCount;j++) {
				System.out.print("*");
			}
			starCount -=2;
			blink++;
			System.out.println();
		}
	}

}
