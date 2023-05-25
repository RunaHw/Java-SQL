package JavaFestivla03;

public class Ex02 {

	public static void main(String[] args) {
		int num = 77;
		int sum= 0;
		for(int i=1; i<=77; i++) {
			sum += (i * num--);
		}
		System.out.println(sum);
	}

}
