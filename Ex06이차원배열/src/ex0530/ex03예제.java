package ex0530;

public class ex03예제 {

	public static void main(String[] args) {
		
		// 3 12
		// 6 15
		// 9 18
		
		
		int[][] numbers = new int[2][3];
		int cnt = 1;
		int row = numbers.length;
		int col = numbers[0].length;
		
		for (int i = 0; i < row; i++) {
			for (int j = 0; j < col; j++) {
				numbers[i][j] = 3 * cnt++;
			}
		}
		
		
		for(int i = 0; i<col; i++) {
			for(int j =0; j<row; j++) {
				System.out.print(numbers[j][i] + "\t");;				
			}
			System.out.println();
		}
		
		
		
		
		
		
		
		
		
	}

}
