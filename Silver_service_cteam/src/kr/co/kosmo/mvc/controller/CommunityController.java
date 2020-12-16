package kr.co.kosmo.mvc.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.kosmo.mvc.dto.WelfareFacilitiesDTO;
import kr.co.kosmo.mvc.service.CommunityServiceInter;

@Controller
public class CommunityController {
	
	@Autowired
	CommunityServiceInter communityService;
	
	@RequestMapping(value="/communityService")
	public String communityService() {
		return "communityService_jw";
	}
	
	@RequestMapping(value="/medicalLocation")
	public String medicalLocation(WelfareFacilitiesDTO vo, Model model) {
		model.addAttribute("medicalList", communityService.getMedicalList());
		return "medicalLocation_jw";
	}
	
	@RequestMapping(value="/silverhallLocation")
	public String silverhallLocation(WelfareFacilitiesDTO vo, Model model) {
		model.addAttribute("silverhallList", communityService.getSilverhallList());
		return "silverhallLocation_jw";
	}
	
	@RequestMapping(value="/elderlyhomeLocation")
	public String elderlyhomeLocation(WelfareFacilitiesDTO vo, Model model) {
		model.addAttribute("elderlyhomeList", communityService.getElderlyhomeList());
		return "elderlyhomeLocation_jw";
	}
	
	@RequestMapping(value="/welfareFacilityDetail")
	public String welfareFacilityDetail(WelfareFacilitiesDTO vo, Model model, HttpServletRequest request) {
		int facilityNo = Integer.parseInt(request.getParameter("facilityNo"));
		model.addAttribute("facInfo", communityService.getFacilityInfo(vo));
		model.addAttribute("facilityNo", facilityNo);
		return "welfareFacilityDetail_jw";
	}
	
	@RequestMapping(value="/communityReservation")
	public String communityReservation(WelfareFacilitiesDTO vo, Model model) {
		model.addAttribute("WelfareFacilities", communityService.getWelfareFacilities(vo));
		model.addAttribute("Reservationmember", communityService.getReservationmember());
		return "communityReservation_jw";
	}
	
}
