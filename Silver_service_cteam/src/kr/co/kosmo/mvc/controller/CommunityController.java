package kr.co.kosmo.mvc.controller;

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
		model.addAttribute("medicalList", communityService.getMedicalList(vo));
		return "medicalLocation_jw";
	}
	
	@RequestMapping(value="/silverhallLocation")
	public String silverhallLocation(WelfareFacilitiesDTO vo, Model model) {
		model.addAttribute("silverhallList", communityService.getSilverhallList(vo));
		return "silverhallLocation_jw";
	}
	
	@RequestMapping(value="/elderlyhomeLocation")
	public String elderlyhomeLocation(WelfareFacilitiesDTO vo, Model model) {
		model.addAttribute("elderlyhomeList", communityService.getElderlyhomeList(vo));
		return "elderlyhomeLocation_jw";
	}
	
	@RequestMapping(value="/welfareFacilityDetail")
	public String welfareFacilityDetail(WelfareFacilitiesDTO vo, Model model) {
		model.addAttribute("facinfo", communityService.getFacilityInfo(vo));
		return "welfareFacilityDetail_jw";
	}
	
}
