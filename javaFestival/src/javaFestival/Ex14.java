package javaFestival;

public class Ex14 {

	public static void main(String[] args) {
		
		System.out.println(getMiddle("test"));
	}

	private static String getMiddle(String string) {
		int length = string.length();
		int half = length /2;
		
		if(length % 2 == 0) {
			return string.substring(half-1, half+1);
		}
		else {
			return string.substring(half, half+1);
		}
	}

}
