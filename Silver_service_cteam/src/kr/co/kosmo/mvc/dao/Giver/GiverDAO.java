package kr.co.kosmo.mvc.dao.Giver;



import java.util.List;

import kr.co.kosmo.mvc.dto.Giver.CareerVO;
import kr.co.kosmo.mvc.dto.Giver.GiverVO;
import kr.co.kosmo.mvc.dto.Giver.LicenseVO;

public interface GiverDAO {


	public List<GiverVO> selectGiverByNo_list() throws Exception;
	
	public void deleteGiver(GiverVO vo) throws Exception;

}