package kr.co.kosmo.mvc.dao;



import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.kosmo.mvc.dto.CustomerVO;
import kr.co.kosmo.mvc.dto.Giver.CareerVO;
import kr.co.kosmo.mvc.dto.Giver.GiverVO;
import kr.co.kosmo.mvc.dto.Giver.Giver_SatisfactionVO;
import kr.co.kosmo.mvc.dto.Giver.Hope_Business_AreaVO;
import kr.co.kosmo.mvc.dto.Giver.LicenseVO;

import java.util.List;

@Repository
public class CustomerDAOImpl implements CustomerDAO {

   @Autowired
   private SqlSession sqlSession;

   
 //-------------------- 동윤 -------------------------------------------------------------   
// 도우미 기본정보 입력   
   
   @Override
   public int insertCustomer(CustomerVO Cvo) throws Exception{
	   System.out.println("===> sqlSession insertCustomer()_DAO 호출");
	   return sqlSession.insert("customerMapper.insert_customer", Cvo);
   }
   


   

}