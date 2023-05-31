package ex0531;

public class ex02이차원배열예제2 {

	public static void main(String[] args) {

		int[][] arr = new int[5][5];
		int cnt = 21;
		int row = arr.length;
		int col = arr[0].length;

		for (int i = 0; i < row; i++) {
			if (i % 2 == 0) {
				for (int j = 0; j < col; j++) {
					arr[i][j] = cnt++;
				}

			} else if (i % 2 == 1) {
				for (int j = col-1; j >= 0; j--) {
					arr[i][j] = cnt++;
				}
			}
		}

		for (int i = 0; i < row; i++) {
			for (int j = 0; j < col; j++) {
				System.out.print(arr[i][j] + "\t");
			}
			System.out.println();
		}

	}

}
