package javaFestival;

public class Ex28 {

	public static void main(String[] args) {
		int cnt = 1;
		
		int row =5;
		int cols =5;
		
		int[][] arr = new int[row][cols];
		
		System.out.println("원본");
		for (int i = 0; i < row; i++) {
			for (int j = 0; j < cols; j++) {
				arr[i][j] = cnt;
				if(cnt< 10) {
					System.out.print(" "+arr[i][j]+"\t");
				}
				else System.out.print(arr[i][j]+"\t");
				cnt++;
			}
			System.out.println();
		}
		int[][] rota = new int[row][cols];
		cnt = 1;
		System.out.println();
		System.out.println("90도 회전");
		for (int i = 0; i < cols; i++) {
			for (int j = row-1; j >= 0; j--) {
				rota[j][i] = cnt++;
			}
		}
		for (int i = 0; i < rota.length; i++) {
			for (int j = 0; j < rota.length; j++) {
				if(rota[i][j]<10) {
					System.out.print(" "+rota[i][j]+"\t");
				}
				else System.out.print(rota[i][j]+"\t");
			}
			System.out.println();
		}
	}

}
