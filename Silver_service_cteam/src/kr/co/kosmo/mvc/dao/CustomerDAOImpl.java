package kr.co.kosmo.mvc.dao;



import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import kr.co.kosmo.mvc.dto.Giver.CareerVO;
import kr.co.kosmo.mvc.dto.Giver.CustomerVO;
import kr.co.kosmo.mvc.dto.Giver.GiverVO;
import kr.co.kosmo.mvc.dto.Giver.Giver_SatisfactionVO;
import kr.co.kosmo.mvc.dto.Giver.Hope_Business_AreaVO;
import kr.co.kosmo.mvc.dto.Giver.LicenseVO;

import java.util.List;

@Repository
public class CustomerDAOImpl implements CustomerDAO {

   @Autowired
   private SqlSession sqlSession;

   
 //-------------------- ���� -------------------------------------------------------------   
// ����� �⺻���� �Է�   
   
   @Override
   public int insertCustomer(CustomerVO Cvo) throws Exception{
	   System.out.println("===> sqlSession insertCustomer()_DAO ȣ��");
	   return sqlSession.insert("customerMapper.insert_customer", Cvo);
   }
   


   

}