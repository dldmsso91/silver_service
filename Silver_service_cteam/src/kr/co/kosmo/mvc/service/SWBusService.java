package kr.co.kosmo.mvc.service;

import java.util.*;

import org.springframework.stereotype.Service;

@Service("SWBusService")
public interface SWBusService {
	
	//정류장 정보
	List<Map<String,Object>> nodeList(Map<String, Object> map) throws Exception;
}
