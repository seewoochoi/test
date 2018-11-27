package orders;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import sqlmap.MyAppSqlConfig;

public class OrdersDAO {
	private static final SqlSessionFactory sqlMapper;
	private static SqlSession session;
	static {
		sqlMapper = MyAppSqlConfig.getSqlMapInstance();
	}
	public boolean create(OrdersDTO dto) {
		session = sqlMapper.openSession(true);
		boolean flag = false;
		int cnt = session.insert("orders.create",dto);
		if(cnt>0)flag = true;
		return flag;
	}
	public boolean update(OrdersDTO dto) {
		session = sqlMapper.openSession(true);
		boolean flag = false;
		int cnt = session.update("orders.update",dto);
		if(cnt>0)flag = true;
		return false;
		
	}
	
	public OrdersDTO read(int order_num) {
		
		session = sqlMapper.openSession(true);
		return session.selectOne("orders.read", order_num);
	}
	public OrdersDTO read2(String m_id) {
		session = sqlMapper.openSession(true);
		return session.selectOne("orders.read2", m_id);
	} 
	
	public boolean delete(int order_num) {
		session = sqlMapper.openSession(true);
		boolean flag = false;
		int cnt = session.delete("orders.delete", order_num);
		if(cnt>0)flag = true;
		return  flag;
	}
	public boolean deleteAll(String m_id) {
		session = sqlMapper.openSession(true);
		boolean flag =false;
		int cnt = session.delete("orders.deleteAll", m_id);
		if(cnt>0)flag  =true;
		return flag;
	}
	
	public List<OrdersDTO> list(String m_id) {
		
		session = sqlMapper.openSession(true);
		return session.selectList("orders.list", m_id);
	}
}
