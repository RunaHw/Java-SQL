package javaFestival;

public class Ex34 {

	public static void main(String[] args) {
		String str = "01011000";
		String[] tenNum = str.split("");
		int sum = 0;
		int cnt = 0;

			for (int j = tenNum.length-1; j >= 0; j--) {
				sum += Integer.parseInt(tenNum[cnt++]) * powerN(2, j);

			}
	
		
		System.out.println(str + "(2) = " + sum + "(10)");
		
	}
	public static int powerN(int base, int num) {
		if(num==0) return 1;
		int sum = base;
		for (int i = 1; i < num; i++) {
			sum *= base;
		}
		return sum;
	}
}
