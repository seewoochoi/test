package ojt;

public class BuyTest {
	public static void main(String[] args) {
		Customer custom = new Customer();
		Tv tv = new Tv();
		Computer com = new Computer();
		
		custom.buy(tv);
		custom.buy(com);
		
		System.out.println("ȸ������ �ܰ��" + custom.money+"�����Դϴ�");
		System.out.println("ȸ������ ����Ʈ��"+custom.bonusPoint+"�� �Դϴ�.");
	}
}
