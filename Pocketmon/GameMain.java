package Pocketmon;

import java.util.Scanner;

public class GameMain {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		// 1. 피카츄 - 공격력 : 15, HP : 350, 스킬 : 백만볼트, 타입 : 전기
		// 2. 파이리 - 공격력 : 30, HP : 400, 스킬 : 화염방사, 타입 : 불
		Pocketmon pika = new Pocketmon("피카츄", "전기", "백만볼트", 350, 15);
		Pocketmon firy = new Pocketmon("파이리", "불", "화염방사", 400, 30);

		System.out.println("포켓몬을 선택하세요");
		System.out.print("[1]피카츄 [2]파이리 >> ");
		int choice = sc.nextInt();
		while (pika.getHp() >= 0 && firy.getHp() >= 0) {
			if (choice == 1) {
				// 피카츄 선택
				// 피카츄가 파이리를 공격
				// 1) 일반공격, 스킬공격 선택
				System.out.print("[1] 일반공격 [2]스킬공격 >> ");
				int choiceAtk = sc.nextInt();
				if (choiceAtk == 1) {
					// 일반공격, 파이리의 hp를 피카츄의 공격력만큼 감소
					// 파이리의 현재 hp = 파이리의 원래 hp - 피카츄의 atk
					// 두마리 포켓몬의 hp출력
					firy.setHp(firy.getHp() - pika.getAtk());
					if (pika.getHp() > 0 && firy.getHp() > 0) {
						System.out.println("피카츄의 hp = " + pika.getHp() + ", 파이리의 hp = " + firy.getHp());

					}
				} else if (choiceAtk == 2) {
					// 스킬공격, 파이리의 hp를 파키츄의 공격력 1.5배만큼 감소
					// 피카츄의 스킬 출력
					// 두마리 포켓몬의 hp출력
					firy.setHp(firy.getHp() - (int) (pika.getAtk() * 1.5));
					System.out.println("\u001B[31m" + pika.getSkill() + "\u001B[0m");
					if (pika.getHp() > 0 && firy.getHp() > 0) {
						System.out.println("피카츄의 hp = " + pika.getHp() + ", 파이리의 hp = " + firy.getHp());

					}
				} else {
					System.out.println("잘못된 숫자를 입력하셨습니다.");
				}
			} else if (choice == 2) {
				// 파이리 선택
				// 파이리가 피카츄를 공격
				// 1) 일반공격, 스킬공격 선택
				System.out.print("[1] 일반공격 [2]스킬공격 >> ");
				int choiceAtk = sc.nextInt();
				if (choiceAtk == 1) {
					// 일반공격, 피카츄의 hp를 파이리의 공격력만큼 감소
					// 피카츄의 현재 hp = 피카츄의 원래 hp - 파이리의 atk
					// 두마리 포켓몬의 hp출력
					pika.setHp(pika.getHp() - firy.getAtk());
					if (pika.getHp() > 0 && firy.getHp() > 0) {
						System.out.println("피카츄의 hp = " + pika.getHp() + ", 파이리의 hp = " + firy.getHp());

					}
				} else if (choiceAtk == 2) {
					// 스킬공격, 피카츄의 hp를 파이리의 공격력 1.5배만큼 감소
					// 파이리의 스킬 출력
					// 두마리 포켓몬의 hp출력
					pika.setHp(pika.getHp() - (int) (firy.getAtk() * 1.5));
					System.out.println("\u001B[31m" + firy.getSkill() + "\u001B[0m");
					if (pika.getHp() > 0 && firy.getHp() > 0) {
						System.out.println("피카츄의 hp = " + pika.getHp() + ", 파이리의 hp = " + firy.getHp());

					}
				} else {
					System.out.println("잘못된 숫자를 입력하셨습니다.");
				}

			} else {
				System.out.println("잘못된 숫자를 입력하셨습니다.");

			}

		}
		if (pika.getHp() < 0) {
			System.out.println( firy.getName() + "승리~~~~");
			System.out.println("피카츄의 hp = " + 0 + ", 파이리의 hp = " + firy.getHp());
		}
		if (firy.getHp() < 0) {
			System.out.println( pika.getName()+"승리~~~~");
			System.out.println("피카츄의 hp = " + pika.getHp() + ", 파이리의 hp = " + 0);

		}
		
		sc.close();
	}

}
