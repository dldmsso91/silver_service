package kr.co.kosmo.mvc.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.kosmo.mvc.dto.ReservationInfoVO;
import kr.co.kosmo.mvc.dto.WelfareFacilitiesVO;
import kr.co.kosmo.mvc.service.CommunityService;

@Controller
public class CommunityController {
	
	@Autowired
	CommunityService communityService;
	
	@RequestMapping(value="/communityService")
	public String communityService() {
		return "community/communityService_jw";
	}
	
	@RequestMapping(value="/medicalLocation")
	public String medicalLocation(WelfareFacilitiesVO vo, Model model) {
		model.addAttribute("medicalList", communityService.getMedicalList());
		return "community/medicalLocation_jw";
	}
	
	@RequestMapping(value="/silverhallLocation")
	public String silverhallLocation(WelfareFacilitiesVO vo, Model model) {
		model.addAttribute("silverhallList", communityService.getSilverhallList());
		return "community/silverhallLocation_jw";
	}
	
	@RequestMapping(value="/elderlyhomeLocation")
	public String elderlyhomeLocation(WelfareFacilitiesVO vo, Model model) {
		model.addAttribute("elderlyhomeList", communityService.getElderlyhomeList());
		return "community/elderlyhomeLocation_jw";
	}
	
	@RequestMapping(value="/welfareFacilityDetail")
	public String welfareFacilityDetail(WelfareFacilitiesVO vo, Model model) {
		model.addAttribute("facInfo", communityService.getFacilityInfo(vo));
		return "community/welfareFacilityDetail_jw";
	}
	
	@RequestMapping(value="/communityReservation")
	public String communityReservation(WelfareFacilitiesVO vo, Model model, HttpSession session) {
		int u_no = Integer.parseInt(session.getAttribute("u_no").toString());
		Map<String, Object> map = new HashMap<String, Object>();
		map = communityService.getReservationmember(u_no,vo);
		model.addAttribute("Reservationmember", map.get("member"));
		model.addAttribute("WelfareFacilities", map.get("facInfo"));
		return "community/communityReservation_jw";
	}
	
	@RequestMapping(value="/reservationInsert")
	public String reservationInsert(ReservationInfoVO vo) {
		communityService.insertReservationInfo(vo);
		return "community/myReservation_jw";
	}
	
}
