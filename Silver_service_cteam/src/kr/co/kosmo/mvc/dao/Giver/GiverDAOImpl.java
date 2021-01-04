package kr.co.kosmo.mvc.dao.Giver;



import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.kosmo.mvc.dto.Giver.CustomerVO;
import kr.co.kosmo.mvc.dto.MemberVO;
import kr.co.kosmo.mvc.dto.Giver.Apply_to_giverVO;
import kr.co.kosmo.mvc.dto.Giver.CareerVO;
import kr.co.kosmo.mvc.dto.Giver.GiverVO;
import kr.co.kosmo.mvc.dto.Giver.Giver_SatisfactionVO;
import kr.co.kosmo.mvc.dto.Giver.Hope_Business_AreaVO;
import kr.co.kosmo.mvc.dto.Giver.HugiVO;
import kr.co.kosmo.mvc.dto.Giver.LicenseVO;
import kr.co.kosmo.mvc.dto.Giver.Service_matchingVO;
import kr.co.kosmo.mvc.dto.Giver.Terminate_giver_serviceVO;
import kr.co.kosmo.mvc.dto.Giver.WorktimeVO;

import java.util.HashMap;
import java.util.List;

@Repository
public class GiverDAOImpl implements GiverDAO {

	@Autowired
	private SqlSession sqlSession;
	
	

	//----------------giver 탈퇴	
	@Override
	public void deleteHope_Business_Area(int giver_no) throws Exception {
		System.out.println("===> sqlSession deleteGiver()_DAO 출력");
		sqlSession.delete("giverMapper.deleteHope_Business_Area",giver_no);
	}	 
	@Override
	public void deletelicense(int giver_no) throws Exception {
		System.out.println("===> sqlSession deleteGiver()_DAO 출력");
		sqlSession.delete("giverMapper.deletelicense",giver_no);
	}	 
	@Override
	public void deletecareer(int giver_no) throws Exception {
		System.out.println("===> sqlSession deleteGiver()_DAO 출력");
		sqlSession.delete("giverMapper.deletecareer",giver_no);
	}	 
	@Override
	public void deleteGiver_Satisfaction(int giver_no) throws Exception {
		System.out.println("===> sqlSession deleteGiver()_DAO 출력");
		sqlSession.delete("giverMapper.deleteGiver_Satisfaction",giver_no);
	}	 
	@Override
	public void deleteHugi_G(int giver_no) throws Exception {
		System.out.println("===> sqlSession deleteHugi_G()_DAO 출력");
		sqlSession.delete("giverMapper.deleteHugi_G",giver_no);	
	}
	@Override
	public void deleteApply_to_giver_G(int giver_no) throws Exception {
		System.out.println("===> sqlSession deleteApply_to_giver_G()_DAO 출력");
		sqlSession.delete("giverMapper.deleteApply_to_giver_G",giver_no);	
	}
	@Override
	public void deleteService_matching_G(int giver_no) throws Exception {
		System.out.println("===> sqlSession deleteService_matching_G()_DAO 출력");
		sqlSession.delete("giverMapper.deleteService_matching_G",giver_no);	
	}
	@Override
	public void deleteGiver(int giver_no) throws Exception {
		System.out.println("===> sqlSession deleteGiver()_DAO 출력");
		sqlSession.delete("giverMapper.deleteGiver",giver_no);
	}	 
	
	
	
	
	
	
	
	//----------------customer 탈퇴		
	@Override
	public void deleteHugi(int customer_no) throws Exception {
		sqlSession.delete("giverMapper.deleteHugi",customer_no);
	}
	@Override
	public void deleteApply_to_giver(int customer_no) throws Exception {
		sqlSession.delete("giverMapper.deleteApply_to_giver",customer_no);
	}
	@Override
	public void deleteService_matching(int customer_no) throws Exception {
		sqlSession.delete("giverMapper.deleteService_matching",customer_no);	
	}
	@Override
	public void deleteCustomer(int customer_no) throws Exception {
		sqlSession.delete("giverMapper.deleteCustomer",customer_no);	
	}

	
	
	
	
	
	//--------------일일 만족도 insert	
	@Override
	public void insertSatisfaction(Giver_SatisfactionVO satisfactionVO) throws Exception {
		System.out.println("===> sqlSession insertTEST()_DAO 출력"+satisfactionVO.getCustomer_satisfaction_complain());		
		sqlSession.insert("giverMapper.insert_Satisfaction", satisfactionVO);
	}
			
	//----------- giver 전체 테이블 TEST select	
	@Override
	public List<GiverVO> selectGiverByNo_list(int giver_no) throws Exception {
		System.out.println("===> sqlSession selectGiverByNo()_DAO 출력");
		return sqlSession.selectList("giverMapper.selectGiverByNo",giver_no);
	}	

	
	//------------------------------------내 이력서 확인하기용 select문 start	
	// giver 기본 테이블 select	
	@Override
	public List<GiverVO> select_MyDefault_info(int giver_no) throws Exception {
		System.out.println("===> sqlSession selectDefault_info()_DAO 출력");		
		return sqlSession.selectList("giverMapper.select_MyDefault_info",giver_no);
	}			
	// giver 경력 테이블 select	
	@Override
	public List<GiverVO> select_MyCareer_info(int giver_no) throws Exception {
		System.out.println("===> sqlSession select_Default_info()_DAO 출력");
		return sqlSession.selectList("giverMapper.select_MyCareer_info",giver_no);
	}			
	// giver 희망 근무지역 테이블 select	
	@Override
	   public List<GiverVO> select_MyHope_Business_Area_info(int giver_no) throws Exception {
	      System.out.println("===> sqlSession select_license_info()_DAO 출력"+giver_no);
	      return sqlSession.selectList("giverMapper.select_MyHope_Business_Area_info",giver_no);
	   }								
	// giver 자격증 테이블 select	
	@Override
	public List<GiverVO> select_MyLicense(int giver_no) throws Exception{		
		return sqlSession.selectList("giverMapper.select_Mylicense_info",giver_no);
	}
	//------------------------------------내 이력서 확인하기용 select문 end
	
	
	//------------------------------------도우미 이력서 확인하기용 select문 start		
	// giver 기본 테이블 select	
	@Override
	public List<GiverVO> selectDefault_info(int giver_no) throws Exception {
		System.out.println("===> sqlSession selectDefault_info()_DAO 출력");		
		return sqlSession.selectList("giverMapper.selectDefault_info",giver_no);
	}			
	// giver 경력 테이블 select	
	@Override
	public List<GiverVO> select_Career_info(int giver_no) throws Exception {
		System.out.println("===> sqlSession select_Default_info()_DAO 출력");
		return sqlSession.selectList("giverMapper.select_Career_info",giver_no);
	}		
	// giver 희망 근무지역 테이블 select	
	@Override
	   public List<GiverVO> select_Hope_Business_Area_info(int giver_no) throws Exception {
	      System.out.println("===> sqlSession select_license_info()_DAO 출력");
	      return sqlSession.selectList("giverMapper.select_Hope_Business_Area_info",giver_no);
	   }				
		
	// giver 자격증 테이블 select	
	@Override
	public List<GiverVO> select_License(int giver_no) throws Exception{		
		return sqlSession.selectList("giverMapper.select_license_info",giver_no);
	}	
	//------------------------------------도우미 이력서 확인하기용 select문 end	
	
	
	//------------------------------------내 신청서 확인하기용 select문 start	
	@Override
	public List<CustomerVO> select_default_customer_info(int customer_no) throws Exception {
		return sqlSession.selectList("giverMapper.select_default_customer_info",customer_no);
	}
	//------------------------------------내 신청서 확인하기용 select문 end	

	
	
	//------------------------------------내 서비스 확인하기용(고객) select문 start	
	@Override
	public List<Apply_to_giverVO> select_customer_apply(int customer_no) throws Exception {
		return sqlSession.selectList("giverMapper.select_customer_apply",customer_no);
	}
	@Override
	public List<Service_matchingVO> select_customer_matching(int u_no) throws Exception {
		return sqlSession.selectList("giverMapper.select_customer_matching",u_no);
	}
	@Override
	public List<Service_matchingVO> select_giver_matching(int customer_no) throws Exception {
		return sqlSession.selectList("giverMapper.select_giver_matching",customer_no);
	}
	//------------------------------------내 서비스 확인하기용(고객) select문 end	

	
	
	
	
	//----------- 추천도우미 select	
//	@Override
//	public List<GiverVO> recommend_giver(GiverVO vo) throws Exception {
//	      System.out.println("===> sqlSession recommend_giver()_DAO 출력");
//		return sqlSession.selectList("giverMapper.recommend_giver",vo);
//	}
	

	//----------- 추천도우미 대체용으로 쓰고있음 select	야 이거 테스트중이다!
	@Override
	public List<GiverVO> selectGiverList() throws Exception {
		System.out.println("===> sqlSession selectGiverList()_DAO 출력");	
		return sqlSession.selectList("giverMapper.selectGiverList");
	}
	
	//----------- 도우미에게 신청하기 insert	
	@Override
	public void apply_to_giver_insert(HashMap<String, Integer> map) throws Exception {
		System.out.println("apply_to_giver_insert DAO : giver_no"+map.get("giver_no"));
		System.out.println("apply_to_giver_insert DAO : customer_no"+map.get("customer_no"));
		sqlSession.insert("giverMapper.apply_to_giver_insert", map);
	}

	
	//-----------------------------My page part
	
	//----------- 신청한 도우미 내역보기 select
	@Override
	public List<Apply_to_giverVO> select_apply_to_Giver(int u_no) throws Exception {
		System.out.println("Apply_to_giverVO DAO : giver_no"+u_no);

		return sqlSession.selectList("giverMapper.select_apply_to_Giver",u_no);
	}	
	
	//-----------  후기 등록하기(도우미용)
	@Override
	public void insert_hugi_giver(HugiVO hvo) throws Exception {
		System.out.println("hugi_insert DAO : giver_no"+hvo.hugi_contents);
		sqlSession.insert("giverMapper.insert_hugi_giver",hvo);
	}
	
	//-----------  후기 등록하기(고객용)
	@Override
	public void insert_hugi_customer(HugiVO hvo) throws Exception {
		System.out.println("hugi_insert DAO : giver_no"+hvo.hugi_contents);
		sqlSession.insert("giverMapper.insert_hugi_customer",hvo);
	}
	
	//-----------  후기 내역 보기(도우미용)
	@Override
	public List<HugiVO> select_hugi(int u_no) throws Exception {
		System.out.println("select_hugi DAO : hugi_contents"+u_no);
		return sqlSession.selectList("giverMapper.select_hugi",u_no);
	}	

	//-----------  후기 내역 보기(고객용)
	@Override
	public List<HugiVO> select_hugi_customer(int u_no) throws Exception {
		System.out.println("select_hugi_customer DAO : hugi_contents"+u_no);
		return sqlSession.selectList("giverMapper.select_hugi_customer",u_no);
	}

	//-----------  후기 삭제하기
	@Override
	public void delete_Hugi(HugiVO hvo) throws Exception {
		System.out.println("delete_Hugi DAO 완료!");
		sqlSession.delete("giverMapper.delete_Hugi",hvo);		
	}
	
	//-----------  후기 상세보기(수정용)
	@Override
	public List<HugiVO> select_hugi_detail(HugiVO hvo) throws Exception {
		System.out.println("select_hugi_detail DAO 완료!");
		return sqlSession.selectList("giverMapper.select_hugi_detail",hvo);
	}

	//-----------  후기 수정하기
	@Override
	public void update_Hugi(HugiVO hvo) throws Exception {
		   sqlSession.update("giverMapper.update_Hugi",hvo);
		
	}
	
	
	//-------------- 고객 상세정보
	@Override
	public List<CustomerVO> select_customer_detail(int customer_no) throws Exception {
		return sqlSession.selectList("giverMapper.select_customer_detail",customer_no);
	}
	
	//-------------- 서비스 매칭 등록하기
	@Override
	public void insert_matching(Service_matchingVO service_matchingVO) throws Exception {
		sqlSession.insert("giverMapper.insert_matching",service_matchingVO);
	}	

	
	//-------------- 서비스 매칭시 신청리스트에서 해당 신청서 delete
	@Override
	public void delete_apply(Apply_to_giverVO avo) throws Exception {
		sqlSession.delete("giverMapper.delete_apply",avo);	
		
	}

	
	//-------------- 매칭테이블에서 목록 가져오기(매칭확인부분에 쓰일것.)
	@Override
	public List<Service_matchingVO> select_metching_list(int u_no) throws Exception {
		return sqlSession.selectList("giverMapper.select_metching_list",u_no);
	}

	
	//-------------- 매칭테이블에서 도우미 정보를 가져오기(매칭확인부분에 쓰일것.)
	@Override
	public List<Service_matchingVO> select_metching_giver(int u_no) throws Exception {
		return sqlSession.selectList("giverMapper.select_metching_giver",u_no);
	}	
	
	//-------------- 매칭테이블에서 고객 정보를 가져오기(매칭확인부분에 쓰일것.)
	@Override
	public List<Service_matchingVO> select_metching_customer(Service_matchingVO svo) throws Exception {
		return sqlSession.selectList("giverMapper.select_metching_customer",svo);
	}

	//-------------- 매칭 delete
	@Override
	public void delete_matching(Service_matchingVO svo) throws Exception {
		sqlSession.delete("giverMapper.delete_matching",svo);
	}
	
	
	//-------------- 서비스 종료 insert	
	@Override
	public void insert_terminate(Terminate_giver_serviceVO tvo) throws Exception {
		sqlSession.insert("giverMapper.insert_terminate",tvo);
	}	
	
	
	//-------------- 서비스 종료 정보를 가져오기(도우미용) select	
	@Override
	public List<Terminate_giver_serviceVO> select_terminate_giver(int giver_no) throws Exception {
		return sqlSession.selectList("giverMapper.select_terminate_giver",giver_no);
	}	
	
	
	//-------------- 서비스 종료 정보를 가져오기(고객용) select	
	@Override
	public List<Terminate_giver_serviceVO> select_terminate_customer(int customer_no) throws Exception {
		return sqlSession.selectList("giverMapper.select_terminate_customer",customer_no);
	}
	
	
	
	
	
	
	
	
	//-------------------- 동윤 -------------------------------------------------------------   
	// 도우미 기본정보 입력   
	   
	   @Override
	   public int insertGiver(GiverVO Gvo) {
		   System.out.println("===> sqlSession insertGiver()_DAO 호출");
		   return sqlSession.insert("giverMapper.insert_giverinfo", Gvo);
	   }
	   
	   @Override
	   public void insertCareer(List<CareerVO> vo) {
		   System.out.println("===> sqlSession insertCareer()_DAO 호출");
		   sqlSession.insert("giverMapper.insert_career", vo);
	   }
	   
	   @Override
	   public void insertLicense(List<LicenseVO> vo) {
		   System.out.println("===> sqlSession insertLicense()_DAO 호출");
		   sqlSession.insert("giverMapper.insert_license", vo);
	   }
	   
	   @Override
	   public void insertHopeBusinessArea(List<Hope_Business_AreaVO> vo) {
		   System.out.println("===> sqlSession insertHopeBusinessArea()_DAO 호출");
		   sqlSession.insert("giverMapper.insert_hope_area", vo);
	   }	
	
	   //-------------------- 용진 -------------------------------------------------------------   
	      // 업데이트
	      //업데이트문 정보
	      @Override
	      public void updateDefault_info(GiverVO vo) throws Exception{
	         System.out.println("===> sqlSession updateDefault_info()_DAO  호출 ");
	         
	         // #{giver_type},smoking= #{smoking}

	         
	         sqlSession.update("giverMapper.updateDefault_info",vo);
	      }
	   
	   

		   // 멤버
		   @Override
		   public void updatemember(MemberVO mo) throws Exception{
			   System.out.println("updatemember 호출");
			   System.out.println("u_no"+mo.getU_no());
			   System.out.println("addr"+mo.getU_addr());
			   sqlSession.update("giverMapper.updatemember",mo);
		   }
		@Override
		public void updateLicense(LicenseVO lvo) throws Exception {
			System.out.println("updateLicense 호출");
			sqlSession.update("giverMapper.updateLicense", lvo);
			
		}
		@Override
		public void updateCustomer(CustomerVO cvo) throws Exception {
			System.out.println("updateCustomer DAO 호출");
			System.out.println("==========="+cvo.getCan_walk());
			System.out.println("=================="+cvo.getGiver_type());
			sqlSession.update("giverMapper.updateCustomer", cvo);
			
		}
		@Override
		public void worktimeInsert(WorktimeVO wvo) throws Exception {
			System.out.println("worktimeInsert  DAO 호출");
			sqlSession.insert("work.worktimeInsert", wvo);
			
		}
		@Override
		public List<WorktimeVO> worktimeselect(WorktimeVO wvo) throws Exception {
			System.out.println("worktimeselect DAO 호출");
			return sqlSession.selectList("work.worktimeselect", wvo);
			
		}
		@Override
		public void updateCareer(CareerVO cvo) throws Exception {
			System.out.println("updateCareer DAO 호출");
			sqlSession.update("giverMapper.updateCareer", cvo);
			
		}
		@Override
		public void updateHopeBusiness(Hope_Business_AreaVO hvo) throws Exception {
			System.out.println("updateHopeBusiness DAO 호출");
			sqlSession.update("giverMapper.updateHopeBusiness", hvo);
			
		}





	   	
		
}