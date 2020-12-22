package kr.co.kosmo.mvc.service;
import java.util.*;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.co.kosmo.mvc.dao.SWBusDAO;



@Service("swBusServ")
public class SWBusServiceImpl implements SWBusService {

	// @Resource 어노테이션: 빈의 이름을 이용해서 주입할 객체를 검색해준다.
	@Resource(name = "swBusDAO")
	private SWBusDAO swBusDAO;

	//정류장 정보
	public List<Map<String, Object>> nodeList(Map<String, Object> map) throws Exception {
	//System.out.println("ServiceImpl->정류장정보");
		return swBusDAO.selectNodeList(map);
	}
}