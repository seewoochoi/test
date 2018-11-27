package ojt;

public class BuyTest {
	public static void main(String[] args) {
		Customer custom = new Customer();
		Tv tv = new Tv();
		Computer com = new Computer();
		
		custom.buy(tv);
		custom.buy(com);
		
		System.out.println("회원님의 잔고는" + custom.money+"만원입니다");
		System.out.println("회원님의 포인트는"+custom.bonusPoint+"점 입니다.");
	}
}
