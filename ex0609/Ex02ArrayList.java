package ex0609;

import java.util.ArrayList;

import Pocketmon.Pocketmon;

public class Ex02ArrayList {

	public static void main(String[] args) {

		// 제네릭을 사용하는 클래그
		Car<String, Integer> c = new Car<String, Integer>();
		
		// ArrayList 클래스
		// 가변 배열
		// 레퍼런스 변수들만 가질 수 있다.
		
		// 1. 비어있는 ArrayList 생성
		// ArrayList< 배열 안에 담고 싶은 자료형 >
		ArrayList<String> list = new ArrayList<>();
		
		// 2. 데이터 넣기
		// .add( 데이터 );
		// 제너릭에 써준 자료형에 맞게끔 집어넣어야한다.
		list.add("ㅂㅎㅇ");
		list.add("ㄱㄹㅈ");
		list.add("ㅈㅎㅇ");
		
		// 3. 데이터 꺼내기
		System.out.println(list.get(0));
		
		// 4. 배열의 길이
		int length = list.size();
		
		for (int i = 0; i < length; i++) {
			System.out.println(list.get(i));
		}
		
		
		// 5. 배열 안의 요소를 삭제
		list.remove(1);
		
		for (int i = 0; i < list.size(); i++) {
			System.out.println(list.get(i));
		}
		System.out.println("====================================================================");
		
		// 1. 포켓몬 데이터를 저장할 수 있느 ArrayList를 선언
		
		ArrayList<Pocketmon> monsterList = new ArrayList<Pocketmon>();
		// 2. 원하는 포켓몬 데이터를 3개 넣어라
		monsterList.add(new Pocketmon("피카츄", "전기", "백만볼트", 350, 10));
		monsterList.add(new Pocketmon("파이리", "불" ,"화염방사", 300, 15));
		monsterList.add(0, new Pocketmon("이상해씨", "풀", "나뭇잎공격", 400, 8)); // 원하는 인덱스에 데이터를 집어넣기(기존 데이터는 인덱스가 뒤로 밀림)
		
		// 3. 각 포켓몬의 정보를 출력
		// "이름 : ~~~~~" 
		for (int i = 0; i < monsterList.size(); i++) {
			System.out.println("이름 : " + monsterList.get(i).getName()  + "\t스킬 : " + monsterList.get(i).getSkill());
		}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}

}
