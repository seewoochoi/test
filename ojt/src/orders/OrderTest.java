package orders;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.apache.catalina.connector.Request;

public class OrderTest {

	public static void main(String[] args) {
		OrdersDAO dao = new OrdersDAO();
//		 create(dao);
//		update(dao);
//		 read(dao);
		// delete(dao);
		// list(dao);
		
		 read2(dao);
	}

	private static void read2(OrdersDAO dao) { 
		OrdersDTO dto = dao.read2("admin2");
		p(dto);
	}

	private static void list(OrdersDAO dao) {

		List<OrdersDTO> list = dao.list("admin2");

		Iterator<OrdersDTO> iter = list.iterator();

		while (iter.hasNext()) {
			OrdersDTO dto = iter.next();
			p(dto);
			p("----------------------");
		}

	}

	private static void delete(OrdersDAO dao) {

		if (dao.delete(1)) {
			p("����");
		} else {
			p("����");
		}

	}

	private static void read(OrdersDAO dao) {
		OrdersDTO dto = dao.read(2);
		p(dto);

	}

	private static void update(OrdersDAO dao) {
		
		OrderDTO dto = dao.read(order_num);
		if (dao.update(dto)) {
			p("����");
		} else { 
			p("����");
		}
	}

	private static void create(OrdersDAO dao) {
		OrdersDTO dto = new OrdersDTO();
		dto.setOrder_num(20);
		dto.setO_pay(16400);
		dto.setO_req("¥���߰���");
		dto.setO_address("��⵵");
		dto.setR_code("R001");
		dto.setM_id("admin2");
		dto.setO_mileage(1000);

		if (dao.create(dto)) {
			p("����");
		} else {
			p("����");
		}
	}

	private static void p(String string) {
		System.out.println(string);

	}

	private static void p(OrdersDTO dto) {
		p("�ֹ���ȣ:" + dto.getOrder_num());
		p("�����ݾ�:" + dto.getO_pay());
		p("��û����:" + dto.getO_req());
		p("�ּ�:" + dto.getO_address());
		p("�Ĵ��ڵ�:" + dto.getR_code());
		p("ȸ�����̵�:" + dto.getM_id());
		p("���ϸ���:" + dto.getO_mileage());
		p("���帶�ϸ���:" + dto.getM_mileage());
		p("���:" + dto.getM_grade());

	}

}
