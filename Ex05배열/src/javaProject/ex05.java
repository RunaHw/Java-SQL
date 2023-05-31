package javaProject;

import java.util.Arrays;

public class ex05 {

	public static void main(String[] args) {
		int[]point = {92,32,52,9,81,2,68}; //- 주어진 배열
		int small_dif = 100; //-가장 작은 차이 값을 구하기 위해 제일 경우가 클 100으로 초기화
		int[]pair = new int [2]; //- 작은 차이 값이 나왔을 때 원하는 인덱스 값을 넣기 위한 배열
		
		for (int i = 0; i < point.length; i++) {
			for(int j = 0; j<i; j++) {
				int dif = point[i] > point[j] ? point[i] - point[j] : point[j]-point[i];
				if(small_dif > dif) {
					small_dif = dif;
					pair[0] = i > j ? j : i; 
					pair[1] = i < j ? j : i; 
				}
			}
		}
		System.out.print(Arrays.toString(pair));
		
		
		
	}

}
