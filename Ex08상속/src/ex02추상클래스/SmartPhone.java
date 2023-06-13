package ex02추상클래스;

import java.util.Scanner;

public class SmartPhone extends Phone {
	Scanner sc = new Scanner(System.in);
	
//	public void call() {
//	System.out.println("전화걸기");
//	}
//	public void message() {
//		System.out.println("메세지 보내기");
//	}
	
	
	public void wifi() {
		System.out.println("wifi 연결하기");
	}

	@Override
	public void call() {
		while(true) {
			System.out.print("[1]일반 전화 [2]영상통화 >> ");
			int sel = sc.nextInt();
			if(sel == 1) {
				System.out.println("일반전화 연결");
				break;
			}
			else if(sel== 2) {
				System.out.println("영상통화 전화걸기");
				break;
			}
			else {
				System.out.println("잘 못 입력했습니다. 다시 입력해 주세요.");
				return;
			}
		}
	
		
	}
	
}
