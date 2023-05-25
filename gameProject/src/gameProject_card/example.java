package gameProject_card;

public class example {

	public static void main(String[] args) {
		int starCount = 1; //별 갯수
		for(int i =4; i>=0; i--) {
			for(int j = 0; j < 9; j++) {
				if(i>j) {
					System.out.print(" ");					
				}
				else if(i+starCount>i && j<i+starCount){System.out.print("*");
					
				}
				
			}//j for
			System.out.println();
			starCount +=2;
		}//i for
	}

}
