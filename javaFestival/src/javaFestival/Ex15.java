package javaFestival;


public class Ex15 {

	public static void main(String[] args) {
		String score = "A,A,B,C,D,A,C,D,D,D,F";
		String[] scoreLength = score.split(",");
		String[] grade = {"A", "B", "C", "D", "F"};
		int[] cnt = new int[grade.length];
		
		for (int i = 0; i < grade.length; i++) {
			for (int j = 0; j < scoreLength.length; j++) {
				if(scoreLength[j].equals(grade[i])) {
					cnt[i]++;
				}
			}
		}
		for (int i = 0; i < cnt.length; i++) {
			System.out.println(grade[i] + " : " + cnt[i]);
		}
		
		
	}

}
