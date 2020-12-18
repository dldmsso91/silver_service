package kr.co.kosmo.mvc.service.Giver;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.kosmo.mvc.dao.Giver.GiverDAO;
import kr.co.kosmo.mvc.dto.Giver.GiverVO;





@Service
public class GiverServiceImple implements GiverService {

	@Autowired
	private GiverDAO giver_dao;


	@Override
	public List<GiverVO> selectGiverByNo_list(GiverVO vo) throws Exception {
		System.out.println("===> selectGiverByNo()_Service 호출");
		return giver_dao.selectGiverByNo_list(vo);
	}

	
	@Override
	public void deleteGiver(GiverVO vo) throws Exception {
		giver_dao.deleteGiver(vo);		
	}
	
}
