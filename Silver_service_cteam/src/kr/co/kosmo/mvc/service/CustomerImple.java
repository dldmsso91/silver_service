package kr.co.kosmo.mvc.service;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.kosmo.mvc.dao.CustomerDAO;
import kr.co.kosmo.mvc.dao.Giver.GiverDAO;
import kr.co.kosmo.mvc.dto.CustomerVO;
import kr.co.kosmo.mvc.dto.Giver.CareerVO;
import kr.co.kosmo.mvc.dto.Giver.GiverVO;
import kr.co.kosmo.mvc.dto.Giver.Giver_SatisfactionVO;
import kr.co.kosmo.mvc.dto.Giver.Hope_Business_AreaVO;
import kr.co.kosmo.mvc.dto.Giver.LicenseVO;



@Service
public class CustomerImple implements CustomerService {

   @Autowired
   private CustomerDAO Customer_dao;

   
   //------------------------------------------ 동윤 지원자 insert ----------------------------
   @Override
   public void insertCustomer( CustomerVO Cvo ) throws Exception{   
	   System.out.println("===> sqlSession insertTEST()_Service 호출 Cvo getGiver_type"+Cvo.getGiver_type());
	   System.out.println("===> sqlSession insertTEST()_Service 호출 Cvo getMy_condition"+Cvo.getMy_condition());
	   System.out.println("===> sqlSession insertTEST()_Service 호출 Cvo getMy_allergy"+Cvo.getMy_allergy());
	   System.out.println("===> sqlSession insertTEST()_Service 호출 Cvo getCan_walk"+Cvo.getCan_walk());
	   System.out.println("===> sqlSession insertTEST()_Service 호출 Cvo getHope_start_date"+Cvo.getHope_start_date());
	   System.out.println("===> sqlSession insertTEST()_Service 호출 Cvo getHope_finish_date"+Cvo.getHope_finish_date());
	   System.out.println("===> sqlSession insertTEST()_Service 호출 Cvo getHope_start_servicetime"+Cvo.getHope_start_servicetime());
	   System.out.println("===> sqlSession insertTEST()_Service 호출 Cvo getHope_end_servicetime"+Cvo.getHope_end_servicetime());
	   System.out.println("===> sqlSession insertTEST()_Service 호출 Cvo getHope_service_place"+Cvo.getHope_service_place());

	   Customer_dao.insertCustomer(Cvo);

   }
   

   
}