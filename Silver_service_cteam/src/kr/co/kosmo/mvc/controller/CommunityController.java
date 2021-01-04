package kr.co.kosmo.mvc.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.kosmo.mvc.dao.CommunityDAO;
import kr.co.kosmo.mvc.dto.FacilityReviewVO;
import kr.co.kosmo.mvc.dto.ReservationInfoVO;
import kr.co.kosmo.mvc.dto.WelfareFacilitiesVO;
import kr.co.kosmo.mvc.service.CommunityService;

@Controller
public class CommunityController {

	@Autowired
	CommunityService communityService;

	@Autowired
	CommunityDAO communityDAO;

	@RequestMapping(value = "/myReservation")
	public String myReservation(ReservationInfoVO vo, Model model, HttpSession session) {
		int u_no;
		if (session.getAttribute("u_no") == null) {
			return "login";
		} else {
			u_no = Integer.parseInt(session.getAttribute("u_no").toString());
		}
		vo.setU_no(u_no);
		model.addAttribute("myReservation", communityService.getMyReservation(vo));
		return "mypage/community_mypage/myReservation_jw";
	}

	@RequestMapping(value = "/searchFacility", method = RequestMethod.POST)
	public String searchFacility(HttpServletRequest request, Model model) {
		Map<String, String> map = new HashMap<String, String>();
		String city = request.getParameter("city");
		String town = request.getParameter("town");
		String typeName = request.getParameter("typeName");
		String facilityName = request.getParameter("facilityName");
		map.put("city", city);
		map.put("town", town);
		map.put("typeName", typeName);
		map.put("facilityName", facilityName);
		model.addAttribute("searchList",communityService.searchFacility(map));
		return "community/communityService_jw";
	}
	
	@RequestMapping(value = "/communityService")
	public String communityService() {
		return "community/communityService_jw";
	}

	@RequestMapping(value = "/medicalLocation")
	public String medicalLocation(WelfareFacilitiesVO vo, Model model) {
		Map<String, Object> map = new HashMap<String, Object>();
		map = communityService.getMedicalList();
		model.addAttribute("medicalList", map.get("medicalList"));
		model.addAttribute("medicalRecommendList", map.get("medicalRecommendList"));
		return "community/medicalLocation_jw";
	}

	@RequestMapping(value = "/silverhallLocation")
	public String silverhallLocation(WelfareFacilitiesVO vo, Model model) {
		Map<String, Object> map = new HashMap<String, Object>();
		map = communityService.getSilverhallList();
		model.addAttribute("silverhallList", map.get("silverhallList"));
		model.addAttribute("silverhallRecommendList", map.get("silverhallRecommendList"));
		return "community/silverhallLocation_jw";
	}

	@RequestMapping(value = "/elderlyhomeLocation")
	public String elderlyhomeLocation(WelfareFacilitiesVO vo, Model model) {
		Map<String, Object> map = new HashMap<String, Object>();
		map = communityService.getElderlyhomeList();
		model.addAttribute("elderlyhomeList", map.get("elderlyhomeList"));
		model.addAttribute("elderlyhomeRecommendList", map.get("elderlyhomeRecommendList"));
		return "community/elderlyhomeLocation_jw";
	}

	@RequestMapping(value = "/welfareFacilityDetail")
	public String welfareFacilityDetail(WelfareFacilitiesVO vo, Model model) {
		Map<String, Object> map = new HashMap<String, Object>();
		map = communityService.getFacilityInfo(vo);
		model.addAttribute("facInfo", map.get("getFacilityInfo"));
		model.addAttribute("review", map.get("getFacilityReview"));
		return "community/welfareFacilityDetail_jw";
	}


	@RequestMapping(value = "/communityReservation")
	public String communityReservation(WelfareFacilitiesVO vo, Model model, HttpSession session) {
		int u_no;
		if (session.getAttribute("u_no") == null) {
			return "login";
		} else {
			u_no = Integer.parseInt(session.getAttribute("u_no").toString());
		}
		Map<String, Object> map = new HashMap<String, Object>();
		map = communityService.getReservationmember(u_no, vo);
		model.addAttribute("Reservationmember", map.get("member"));
		model.addAttribute("WelfareFacilities", map.get("facInfo"));
		return "community/communityReservation_jw";
	}

	@RequestMapping(value = "/reservationInsert")
	public String reservationInsert(ReservationInfoVO vo, Model model, HttpSession session) {
		int u_no;
		if (session.getAttribute("u_no") == null) {
			return "login";
		} else {
			u_no = Integer.parseInt(session.getAttribute("u_no").toString());
		}
		vo.setU_no(u_no);
		communityService.insertReservationInfo(vo);
		model.addAttribute("myReservation", communityService.getMyReservation(vo));
		return "mypage/community_mypage/myReservation_jw";
	}

	@RequestMapping(value = "/updateReservationForm")
	public String updateReservationForm(ReservationInfoVO vo, Model model, HttpSession session) {
		int u_no;
		if (session.getAttribute("u_no") == null) {
			return "login";
		} else {
			u_no = Integer.parseInt(session.getAttribute("u_no").toString());
		}
		vo.setU_no(u_no);
		model.addAttribute("myReservation", communityService.updateReservationForm(vo));
		return "community/updateReservationForm_jw";
	}

	@RequestMapping(value = "/updateReservation")
	public String updateReservation(ReservationInfoVO vo, Model model, HttpSession session) {
		int u_no;
		if (session.getAttribute("u_no") == null) {
			return "login";
		} else {
			u_no = Integer.parseInt(session.getAttribute("u_no").toString());
		}
		vo.setU_no(u_no);
		communityDAO.updateReservation(vo);
		model.addAttribute("myReservation", communityService.getMyReservation(vo));
		return "mypage/community_mypage/myReservation_jw";
	}

	@RequestMapping(value = "/reservationDelete")
	public String reservationDelete(ReservationInfoVO vo, Model model, HttpSession session) {
		int u_no;
		if (session.getAttribute("u_no") == null) {
			return "login";
		} else {
			u_no = Integer.parseInt(session.getAttribute("u_no").toString());
		}
		vo.setU_no(u_no);
		communityDAO.reservationDelete(vo);
		model.addAttribute("myReservation", communityService.getMyReservation(vo));
		return "mypage/community_mypage/myReservation_jw";
	}

	@ResponseBody
	@RequestMapping(value="/getMedicalListAjax", method= RequestMethod.POST)
	public List<WelfareFacilitiesVO> getMedicalList(@RequestBody WelfareFacilitiesVO vo) {
		List<WelfareFacilitiesVO> medicalList = communityService.getMedicalListAjax(vo);
		return medicalList;
	}
	
	@ResponseBody
	@RequestMapping(value="/getSilverhallListAjax", method= RequestMethod.POST)
	public List<WelfareFacilitiesVO> getSilverhallList(@RequestBody WelfareFacilitiesVO vo) {
		List<WelfareFacilitiesVO> medicalList = communityService.getSilverhallListAjax(vo);
		return medicalList;
	}
	
	@ResponseBody
	@RequestMapping(value="/getElderlyhomeListAjax", method= RequestMethod.POST)
	public List<WelfareFacilitiesVO> getElderlyhomeList(@RequestBody WelfareFacilitiesVO vo) {
		List<WelfareFacilitiesVO> medicalList = communityService.getElderlyhomeListAjax(vo);
		return medicalList;
	}
	
	@RequestMapping(value="addReview")
	public String addReview(FacilityReviewVO vo) {
		communityDAO.insertReview(vo);
		return "forward:/welfareFacilityDetail";
	}


}
