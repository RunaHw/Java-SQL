package ex0531;

public class ex03이차원배열예제3 {

	public static void main(String[] args) {

		int[][] arr = new int[5][5];

		int cnt = 1;
		int half = arr.length/2;
		int start = half;
		int end = half+1;

		for (int i = 0; i < arr.length; i++) {
			for (int j = start; j < end; j++) {
				arr[i][j] = cnt++;
			}
			if(i<half) {
				start--;
				end++;
			}
			else {
				start++;
				end--;
			}
		}

		for (int i = 0; i < arr.length; i++) {
			for (int j = 0; j < arr.length; j++) {
				System.out.print(arr[i][j] + "\t");
			}
			System.out.println();
		}

	}

}
