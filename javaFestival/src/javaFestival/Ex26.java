package javaFestival;

public class Ex26 {

	public static void main(String[] args) {
		int star = 5;
		int blink = 4;
		
		for (int i = 0; i <star; i++) {
			for (int j = 0; j < star; j++) {
				if(j<blink) {
					System.out.print(" ");
				}
				else {
					System.out.print("*");
				}
			}
			blink--;
			System.out.println();
		}

	}

}
