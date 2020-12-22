package kr.co.kosmo.mvc.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.kosmo.mvc.dao.CommunityDAO;
import kr.co.kosmo.mvc.dto.ReservationInfoVO;
import kr.co.kosmo.mvc.dto.WelfareFacilitiesVO;
import kr.co.kosmo.mvc.service.CommunityService;

@Controller
public class CommunityController {
	
	@Autowired
	CommunityService communityService;
	
	@Autowired
	CommunityDAO communityDAO;
	
	@RequestMapping(value="/myReservation")
	public String myReservation(ReservationInfoVO vo, Model model, HttpSession session) {
		int u_no;
		if(session.getAttribute("u_no")==null) {
			return "login";
		}
		else {
			u_no = Integer.parseInt(session.getAttribute("u_no").toString());
		}
		vo.setU_no(u_no);
		model.addAttribute("myReservation", communityService.getMyReservation(vo));
		return "myReservation_jw";
	}
	
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
		int u_no;
		if(session.getAttribute("u_no")==null) {
			return "login";
		}
		else {
			u_no = Integer.parseInt(session.getAttribute("u_no").toString());
		}
		Map<String, Object> map = new HashMap<String, Object>();
		map = communityService.getReservationmember(u_no,vo);
		model.addAttribute("Reservationmember", map.get("member"));
		model.addAttribute("WelfareFacilities", map.get("facInfo"));
		return "community/communityReservation_jw";
	}
	
	@RequestMapping(value="/reservationInsert")
	public String reservationInsert(ReservationInfoVO vo, Model model, HttpSession session) {
		int u_no;
		if(session.getAttribute("u_no")==null) {
			return "login";
		}
		else {
			u_no = Integer.parseInt(session.getAttribute("u_no").toString());
		}
		vo.setU_no(u_no);
		communityService.insertReservationInfo(vo);
		model.addAttribute("myReservation", communityService.getMyReservation(vo));
		return "myReservation_jw";
	}
	
	
	@RequestMapping(value="/UpdateReservationForm")
	public String UpdateReservationForm(ReservationInfoVO vo, Model model, HttpSession session) {
		int u_no;
		if(session.getAttribute("u_no")==null) {
			return "login";
		}
		else {
			u_no = Integer.parseInt(session.getAttribute("u_no").toString());
		}
		vo.setU_no(u_no);
		model.addAttribute("myReservation", communityService.updateReservationForm(vo));
		return "community/updateReservationForm_jw";
	}
	
	@RequestMapping(value="/updateReservation")
	public String updateReservation(ReservationInfoVO vo, Model model, HttpSession session) {
		int u_no;
		if(session.getAttribute("u_no")==null) {
			return "login";
		}
		else {
			u_no = Integer.parseInt(session.getAttribute("u_no").toString());
		}
		vo.setU_no(u_no);
		communityDAO.updateReservation(vo);
		model.addAttribute("myReservation", communityService.getMyReservation(vo));
		return "myReservation_jw";
	}
	
	@RequestMapping(value="/reservationDelete")
	public String reservationDelete(ReservationInfoVO vo, Model model, HttpSession session) {
		int u_no;
		if(session.getAttribute("u_no")==null) {
			return "login";
		}
		else {
			u_no = Integer.parseInt(session.getAttribute("u_no").toString());
		}
		vo.setU_no(u_no);
		communityDAO.reservationDelete(vo);
		model.addAttribute("myReservation", communityService.getMyReservation(vo));
		return "myReservation_jw";
	}
	
}
