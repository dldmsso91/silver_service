package kr.co.kosmo.mvc.dao;



import java.util.List;

import kr.co.kosmo.mvc.dto.CustomerVO;


public interface CustomerDAO {

   //Customer 기본정보 입력
   public int insertCustomer(CustomerVO Cvo) throws Exception;
   
   
   
}