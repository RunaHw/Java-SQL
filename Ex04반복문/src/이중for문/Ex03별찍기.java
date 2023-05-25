package 이중for문;

public class Ex03별찍기 {

	public static void main(String[] args) {
		
		for(int i =1; i<6;i++) {
			for(int j = 0; j<5; j++) {
				if(j<5-i) {
					System.out.print(" ");					
				}
				else System.out.print("*");
			}
			System.out.println();
		}
		
		
		
		
		
		
		
	}

}
