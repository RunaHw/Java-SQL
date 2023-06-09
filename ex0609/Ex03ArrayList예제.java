package ex0609;

import java.util.ArrayList;
import java.util.Scanner;

public class Ex03ArrayList예제 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);

		// 노래 이름을 저장할 ArrayList 생성
		ArrayList<String> singList = new ArrayList<>();

		int select = 0;
		String newSong = "";

		// singList.add("betelgius");
		while (true) {
			System.out.print("[1] 노래추가 [2] 노래삭제 [3] 노래조회 [4] 종료 >> ");
			select = sc.nextInt();

			if (select == 1) {
				System.out.println("===== 현재 재생 목록 =====");
				if (singList.size() <= 0) {
					System.out.println("재생 목록이 없습니다.");
				} else {
					for (int i = 0; i < singList.size(); i++) {
						System.out.println((i + 1) + ". " + singList.get(i));
					}
				}
				System.out.println("======================");
				while (true) {
					System.out.print("[1]마지막 위치에 추가  [2]원하는 위치에 추가 >> ");
					int insert = sc.nextInt();

					if (insert == 1) {
						// 마지막 위치에 추가
						sc.nextLine();
						System.out.print("추가할 노래 입력 >> ");
						newSong = sc.nextLine();
						singList.add(newSong);
						break;
					} else if (insert == 2) {
						// 원하는 위치에 추가
						sc.nextLine();
						System.out.print("추가할 노래 입력 >> ");
						newSong = sc.nextLine();
						System.out.print("추가할 위치 입력 >> ");
						int loc = sc.nextInt();
						singList.add(loc, newSong);
						break;
					} else {
						// 잘못 입력
						System.out.println("리스트 갯수와 맞지 않습니다.");
						continue;
					}
				}

			} else if (select == 2) {
				while (true) {
					System.out.println("===== 현재 재생 목록 =====");
					if (singList.size() <= 0) {
						System.out.println("재생 목록이 없습니다.");
						System.out.println("======================");
					} else {
						for (int i = 0; i < singList.size(); i++) {

							System.out.println((i + 1) + ". " + singList.get(i));
						}
						System.out.println("======================");
						System.out.print("삭제하고 싶은 노래 번호를 입력해 주세요 >> ");
						int del = sc.nextInt();
						if (del <= singList.size() && del >= 0) {
							singList.remove(del - 1);
							System.out.println("삭제되었습니다.");
							break;
						} else {
							System.out.print("범위를 벗어난 값을 입력했습니다. 다시 입력해 주세요.");
							continue;
						}
					}
					break;
				}
			} else if (select == 3) {

			} else if (select == 4) {
				System.out.println("프로그램을 종료합니다.");
				break;
			} else {
				System.out.println("잘못된 입력입니다.");
				continue;
			}

		}

	}

}
