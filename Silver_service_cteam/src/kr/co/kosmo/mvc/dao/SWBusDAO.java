package kr.co.kosmo.mvc.dao;

import java.util.*;
import org.springframework.stereotype.Repository;

//DAO같은 보통 데이터베이스와 관련된 클래스에
@Repository("swBusDAO")
public class SWBusDAO extends BusAbstractDAO {

	
	
	
	//@SuppressWarnings : 컴파일러가 일반적으로 경고하는 내용을 제외시키는 옵션
	@SuppressWarnings("unchecked")
	 public List<Map<String, Object>> selectNodeList(Map<String, Object> map) {
	  //System.out.println("DAO->");
		return (List<Map<String,Object>>)selectList("swbus.selectNodeList",map);
	 }
	

}