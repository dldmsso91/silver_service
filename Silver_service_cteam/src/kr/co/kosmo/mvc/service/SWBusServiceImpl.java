package kr.co.kosmo.mvc.service;

import java.util.*;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.co.kosmo.mvc.busxml.*;
import kr.co.kosmo.mvc.dao.SWBusDAO;


@Service("swBusServ")
public class SWBusServiceImpl implements SWBusService {



	//@Resource: 빈의 이름을 이용해서 주입할 객체를 검색해준다.
	@Resource(name = "swBusDAO")
	private SWBusDAO swBusDAO;

	@Resource(name = "nodeToRoute")
	private NodeToRoute nodeToRoute;

	@Resource(name = "routeToOrder")
	private RouteToOrder routeToOrder;

	@Resource(name = "routeInfo")
	private RouteInfo routeInfo;

	@Resource(name = "nodeInfo")
	private NodeInfo nodeInfo;


	//나중에 삭제할 예정
	@Override
	public Integer regNodeToRoute() throws Exception {
		List<Map<String, Object>> list = nodeToRoute.insertInfo();
		//Iterator :Set, List, Map의 정보를 얻어 어떤 컬랙션이라도 동일한 방식으로 접근이 가능하여 그 안에 있는 항목들에 접근할 수 있는 방법을 제공 (다형성)
		Iterator<Map<String, Object>> iterator = list.iterator();
		Map<String, Object> map = null;
		while (iterator.hasNext()) {//hasNext() : 읽어올 요소가 남아있는지 확인하는 메소드
			map = iterator.next();//next() : 다음 데이터를 반환한다.
			swBusDAO.insertNodeRouteInfo(map);
		}

		return Integer.valueOf(list.size());//valueOf:문자열에 대한 원시데이터형(primitive value)을 리턴
	}


	//나중에 삭제할 예정
	@Override
	public Integer regRouteToOrder(Map<String, Object> map) throws Exception {
		List<Map<String, Object>> list = routeToOrder.insertInfo(map);
		Iterator<Map<String, Object>> iterator = list.iterator();
		Map<String, Object> temp = null;
		while (iterator.hasNext()) {
			temp = iterator.next();
			swBusDAO.insertRouteOrder(temp);
		}

		return Integer.valueOf(list.size());
	}


	//나중에 삭제할 예정
	@Override
	public Integer regRouteInfo(Map<String, Object> map) throws Exception {
		List<Map<String, Object>> list = routeInfo.insertInfo(map);
		Iterator<Map<String, Object>> iterator = list.iterator();
		Map<String, Object> temp = null;
		while (iterator.hasNext()) {
			temp = iterator.next();
			swBusDAO.insertRouteInfo(temp);
		}
		return Integer.valueOf(list.size());
	}

	//나중에 삭제할 예정
	@Override
	public Integer regNodeInfo(Map<String, Object> map) throws Exception {
		List<Map<String, Object>> list = nodeInfo.insertInfo(map);
		Iterator<Map<String, Object>> iterator = list.iterator();
		Map<String, Object> temp = null;
		while (iterator.hasNext()) {
			temp = iterator.next();
			swBusDAO.insertNodeInfo(temp);
		}
		return Integer.valueOf(list.size());
	}

	//정류장 정보
	public List<Map<String, Object>> nodeList(Map<String, Object> map) throws Exception {
	//System.out.println("ServiceImpl->정류장정보");
		return swBusDAO.selectNodeList(map);
	}
	

	
	
	//노선정보
	@Override
	public Map<String, Object> routeInfo(Map<String, Object> map) throws Exception {
	    Map<String,Object> temp = new HashMap<String,Object>();
	    temp.put("info",swBusDAO.selectRouteId(map));
	    temp.put("path",swBusDAO.selectRoutePath(map));
	    System.out.println("ServiceImpl->노선정보");    
	    System.out.println(map);    
	      
	    return temp;
	}
	
	//
	public List<Map<String, Object>> routeList(Map<String, Object> map) throws Exception {
		//System.out.println("ServiceImpl->정보");
			return swBusDAO.selectRouteList(map);
		}
}