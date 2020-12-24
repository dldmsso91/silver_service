package kr.co.kosmo.mvc.dao;

import java.util.*;
import org.springframework.stereotype.Repository;

//DAO같은 보통 데이터베이스와 관련된 클래스에
@Repository("swBusDAO")
public class SWBusDAO extends BusAbstractDAO {
	
	//나중에 삭제할 예정
	public void insertNodeInfo(Map<String, Object> map) throws Exception {
		insert("buscommon.insertNodeInfo", map);
	}
	
	//나중에 삭제할 예정
	public void insertNodeRouteInfo(Map<String, Object> map) throws Exception {
		insert("buscommon.insertNode", map);
	}
	
	//나중에 삭제할 예정
	public void insertRouteOrder(Map<String, Object> map) throws Exception {
		insert("buscommon.insertRouteOrder", map);
	}
	
	//나중에 삭제할 예정
	public void insertRouteInfo(Map<String, Object> map) throws Exception {
		insert("buscommon.insertRouteInfo", map);
	}
	
	//실시간 버스 정보 
	//@SuppressWarnings : 컴파일 단위의 서브세트와 관련된 컴파일 경고를 사용하지 않도록 설정
	//unchecked : 미확인 오퍼레이션과 관련된 경고를 억제합니다.
	@SuppressWarnings("unchecked")
	 public List<Map<String, Object>> selectNodeList(Map<String, Object> map) {
	  //System.out.println("DAO->정류장정보");
		return (List<Map<String,Object>>)selectList("swbus.selectNodeList",map);
	 }

	

	
	
	
	//노선정보 페이지
	@SuppressWarnings("unchecked")
	public Map<String, Object> selectRouteId(Map<String, Object> map) {
		System.out.println("DAO->정류장정보");
	    return (Map<String,Object>)selectOne("swbus.selectRouteId",map);
	}
	//노선경로
	@SuppressWarnings("unchecked")
	public List<Map<String,Object>> selectRoutePath(Map<String,Object> map){
		System.out.println("DAO->노선정보");
		return (List<Map<String,Object>>)selectList("swbus.selectRoutePath",map);
	}
	
	
	//
	@SuppressWarnings("unchecked")
	 public List<Map<String, Object>> selectRouteList(Map<String, Object> map) {
	  //System.out.println("DAO->노선정보");
		return (List<Map<String,Object>>)selectList("swbus.selectRouteList",map);
	 }
	
}