package ojt;

public class Customer {
	int money = 1000;
	int bonusPoint = 0;
	
	void buy(Product p) {
		if(money<p.price) {
		System.out.println("잔액이 부족합니다.!");
		return;
		}
		money -= p.price;
		bonusPoint += p.bonusPoint;
		System.out.println(p.toString()+"을"+ p.price+"만원에 구입하였습니다.");
		
	}
}
