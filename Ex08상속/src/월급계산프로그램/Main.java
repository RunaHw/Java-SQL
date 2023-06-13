package 월급계산프로그램;

public class Main {

	public static void main(String[] args) {
		RegularEmployee re1 = new RegularEmployee("SMHRD001", "홍O동", 4000, 400);
		TempEmployee te1 = new TempEmployee("SMHRD002", "박O수", 3000);
		PartTimeEmployee pte1 = new PartTimeEmployee("SMHRD003", "김O독", 10, 10);
		
		System.out.println(re1.print()); 
		System.out.println(re1.getMoneyPay()+"만원");
		
		System.out.println(te1.print()); 
		System.out.println(te1.getMoneyPay()+"만원");
		
		System.out.println(pte1.print()); 
		System.out.println(pte1.getMoneyPay());
		
		
		
	}

}
