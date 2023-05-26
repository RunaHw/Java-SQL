package javaFestival04;

public class Ex03 {

	public static void main(String[] args) {
		int blink = 4;
		int star = 1;
		for(int i = 0; i<5; i++) {
			for(int j = 0; j<blink; j++) {
				System.out.print(" ");
			}
			blink--;
			for(int j = 0; j<star; j++ ) {
				System.out.print("*");
			}
			star++;
			System.out.println();
		}
		
	}

}
