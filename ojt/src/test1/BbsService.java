package spring.model.bbs;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


  
@Service
public class BbsService {
	
	@Autowired
	private ReplyDAO rdao;
	
	
	public void delete(int bbsno)throws Exception {
		
		rdao.bdelete(bbsno);//댓글 모두 삭제 
		dao.delete(bbsno);//부모글 삭제
		 
		
	}
	
	@Autowired
	public BbsDAO dao;
	
	 
	public void reply(BbsDTO dto)throws Exception {
 
			Map map = new HashMap();
			map.put("grpno", dto.getGrpno());
			map.put("ansnum", dto.getAnsnum());
			
			
			dao.upAnsnum(map);

			dao.replyCreate(dto);
			 
			

	}
}
