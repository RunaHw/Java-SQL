package ex0530;

public class ex02예제 {

	public static void main(String[] args) {
		
		int[][] numbers = new int[2][3];
		int cnt = 1;
		int row = numbers.length;
		int col = numbers[0].length;
		
		for (int i = 0; i < row; i++) {
			for (int j = 0; j < col; j++) {
				numbers[i][j] = 3 * cnt++;
				// System.out.format("[%02d] " , numbers[i][j]);	
				System.out.print(numbers[i][j] + "\t");
			}
			System.out.println();
		}
		
		// 배열 안의 요소를 전부 출력
		// 단 출력할 때, 배열 모양대로 출력
		
		
		
	}

}
