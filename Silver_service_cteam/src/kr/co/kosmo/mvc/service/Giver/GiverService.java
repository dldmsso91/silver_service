package kr.co.kosmo.mvc.service.Giver;



import java.util.List;


import kr.co.kosmo.mvc.dto.Giver.GiverVO;

public interface GiverService {


	
	public List<GiverVO> selectGiverByNo_list(GiverVO vo) throws Exception;

	public void deleteGiver(GiverVO vo) throws Exception;
	
}