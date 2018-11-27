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
			p("성공");
		} else {
			p("실패");
		}

	}

	private static void read(OrdersDAO dao) {
		OrdersDTO dto = dao.read(2);
		p(dto);

	}

	private static void update(OrdersDAO dao) {
		
		OrderDTO dto = dao.read(order_num);
		if (dao.update(dto)) {
			p("성공");
		} else { 
			p("실패");
		}
	}

	private static void create(OrdersDAO dao) {
		OrdersDTO dto = new OrdersDTO();
		dto.setOrder_num(20);
		dto.setO_pay(16400);
		dto.setO_req("짜장추가요");
		dto.setO_address("경기도");
		dto.setR_code("R001");
		dto.setM_id("admin2");
		dto.setO_mileage(1000);

		if (dao.create(dto)) {
			p("성공");
		} else {
			p("실패");
		}
	}

	private static void p(String string) {
		System.out.println(string);

	}

	private static void p(OrdersDTO dto) {
		p("주문번호:" + dto.getOrder_num());
		p("결제금액:" + dto.getO_pay());
		p("요청사항:" + dto.getO_req());
		p("주소:" + dto.getO_address());
		p("식당코드:" + dto.getR_code());
		p("회원아이디:" + dto.getM_id());
		p("마일리지:" + dto.getO_mileage());
		p("저장마일리지:" + dto.getM_mileage());
		p("등급:" + dto.getM_grade());

	}

}
