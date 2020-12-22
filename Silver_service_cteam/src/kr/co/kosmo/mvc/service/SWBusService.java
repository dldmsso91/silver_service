package kr.co.kosmo.mvc.service;

import java.util.*;

import org.springframework.stereotype.Service;


@Service()
public interface SWBusService {
	//나중에 삭제할 예정
	Integer regNodeInfo(Map<String, Object> map) throws Exception;
	//나중에 삭제할 예정
	Integer regNodeToRoute() throws Exception;
	//나중에 삭제할 예정
	Integer regRouteToOrder(Map<String, Object> map) throws Exception;
	//나중에 삭제할 예정
	Integer regRouteInfo(Map<String, Object> map) throws Exception;

	//정류장 정보
	List<Map<String,Object>> nodeList(Map<String, Object> map) throws Exception;
	

}
