package kr.co.kosmo.mvc.dao;

import java.util.*;
import org.springframework.stereotype.Repository;

//DAO���� ���� �����ͺ��̽��� ���õ� Ŭ������
@Repository("swBusDAO")
public class SWBusDAO extends BusAbstractDAO {
	
	//���߿� ������ ����
	public void insertNodeInfo(Map<String, Object> map) throws Exception {
		insert("buscommon.insertNodeInfo", map);
	}
	
	//���߿� ������ ����
	public void insertNodeRouteInfo(Map<String, Object> map) throws Exception {
		insert("buscommon.insertNode", map);
	}
	
	//���߿� ������ ����
	public void insertRouteOrder(Map<String, Object> map) throws Exception {
		insert("buscommon.insertRouteOrder", map);
	}
	
	//���߿� ������ ����
	public void insertRouteInfo(Map<String, Object> map) throws Exception {
		insert("buscommon.insertRouteInfo", map);
	}
	
	//�ǽð� ���� ���� 
	//@SuppressWarnings : �����Ϸ��� �Ϲ������� ����ϴ� ������ ���ܽ�Ű�� �ɼ�
	@SuppressWarnings("unchecked")
	 public List<Map<String, Object>> selectNodeList(Map<String, Object> map) {
	  //System.out.println("DAO->����������");
		return (List<Map<String,Object>>)selectList("swbus.selectNodeList",map);
	 }


}