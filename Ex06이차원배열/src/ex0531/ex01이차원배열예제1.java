package ex0531;

public class ex01이차원배열예제1 {

	public static void main(String[] args) {

		int[][] numbers = new int[5][5];
		int cnt = 0;

		for (int i = 0; i < numbers.length; i++) {
			for (int j = 0; j < numbers[0].length; j++) {
				numbers[i][j] = ++cnt;
				System.out.print(numbers[i][j] + "\t");
			}
			System.out.println();
		}

	}

}
