package kr.co.kosmo.mvc.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.co.kosmo.mvc.buscommon.*;
import kr.co.kosmo.mvc.busxml.BusStopParser;
import kr.co.kosmo.mvc.service.SWBusService;


@Controller
public class bus_Controller {
	
	@Autowired		//@Resource
	private SWBusService swBusServ;
	
	@Autowired		//@Resource
	private BusStopParser busStopParser;
	
	//�궘�젣 
	@RequestMapping(value = "/bus_admin")
	public String bus_Admin() {
		return "bus_admin_sw";
	}
	
	@RequestMapping(value = "/bus_service")
	public String bus_service() {
		return "bus_service_sw";
	}
	
	
    @RequestMapping(value="/bus_main")
    public ModelAndView bus_main(CommandMap commandMap) throws Exception{
         
        ModelAndView mv = new ModelAndView("bus_main_sw");
        mv.addObject("nodeid",commandMap.get("nodeid"));
        mv.addObject("nodename",commandMap.get("nodename"));
        mv.addObject("lat",commandMap.get("lat"));
        mv.addObject("lng",commandMap.get("lng"));
         
        return mv;
    }
   

  //노선 정보 

    @RequestMapping(value="/bus_info")
    //public ModelAndView bus_Info(Map<String, Object> commandMap) throws Exception{
    public ModelAndView bus_Info(String routeno,String routeid) throws Exception{ 
    ModelAndView mv = new ModelAndView("bus_info_sw");
    System.out.println("nodeid:=>"+routeno);
    System.out.println("routeno:"+routeid);
    mv.addObject("routeno",routeno);
    mv.addObject("routeid",routeid);
    return mv;

    }
	
	//size�쓽 寃쎌슦 紐� 媛쒖쓽 �젙蹂닿� �뙆�떛 �릺�뿀�뒗 吏�瑜� �솗�씤�븯湲� �쐞�븿
    //�굹以묒뿉 �궘�젣�븷 �삁�젙
  	@RequestMapping(value = "/regNodeInfo")
  	public ModelAndView regNodeInfo(CommandMap commandMap) throws Exception {

  		ModelAndView mv = new ModelAndView("regSuc");
  		mv.addObject("size", swBusServ.regNodeInfo(commandMap.getMap()));

  		return mv;
  	} 

  	
  	//�굹以묒뿉 �궘�젣�븷 �삁�젙
  	@RequestMapping(value = "/regNodeToRoute")
  	public ModelAndView regNodeToRoute() throws Exception {
  		ModelAndView mv = new ModelAndView("regSuc");
  		mv.addObject("size", swBusServ.regNodeToRoute());

  		return mv;
  	}

  	
  	//�굹以묒뿉 �궘�젣�븷 �삁�젙
  	@RequestMapping(value = "/regRouteInfo")
  	public ModelAndView regRouteInfo(CommandMap commandMap) throws Exception {

  		ModelAndView mv = new ModelAndView("regSuc");
  		mv.addObject("size", swBusServ.regRouteInfo(commandMap.getMap()));

  		return mv;
  	}
  	
  	
  	//�굹以묒뿉 �궘�젣�븷 �삁�젙
  	@RequestMapping(value = "/regRouteToOrder")
  	public ModelAndView regRouteToOrder(CommandMap commandMap) throws Exception {

  		ModelAndView mv = new ModelAndView("regSuc");
  		mv.addObject("size", swBusServ.regRouteToOrder(commandMap.getMap()));

  		return mv;
  	}
  	
    //�젙瑜섏옣 �젙蹂� 
	//@ResponseBody :�꽌踰꾩뿉�꽌 �겢�씪�씠�뼵�듃濡� �쓳�떟 �뜲�씠�꽣瑜� �쟾�넚�븯湲� �쐞�빐�꽌 �옄諛� 媛앹껜瑜� HTTP �쓳�떟 蹂몃Ц�쓽 媛앹껜濡� 蹂��솚�븯�뿬 �겢�씪�씠�뼵�듃濡� �쟾�넚�떆�궎�뒗 �뿭�솢
	//ajax�궗�슜�븷�븣 �궗�슜�븯硫� jsonView瑜� �뜥以��떎.
	@RequestMapping(value="/nodeList")
	public @ResponseBody ModelAndView busList(@RequestBody Map<String,Object> map) throws Exception{
	    map.put("list", swBusServ.nodeList(map));
	    return new ModelAndView("jsonView", map);
	}
	
	
	//�떎�떆媛� 踰꾩뒪�젙蹂�
	@RequestMapping(value="/nodeRealTime")
	 public @ResponseBody ModelAndView nodeRealTime(@RequestBody Map<String,Object> map) throws Exception{
	  map.put("list", busStopParser.apiParserNodeRealTime(map));
	
	  return new ModelAndView("jsonView", map);
	 }


	
	


	
	
	 //�끂�꽑 寃쎈줈 �젙蹂� �럹�씠吏�
	@RequestMapping(value="/routeInfo")
	public @ResponseBody ModelAndView routeInfo(@RequestBody Map<String,Object> map) throws Exception{
	    Map<String,Object> temp = swBusServ.routeInfo(map);
	    map.put("map", temp.get("info"));
	    map.put("path", temp.get("path"));
	     
	    return new ModelAndView("jsonView",map);
	}
	
	
	//
	@RequestMapping(value="/routeList")
	public @ResponseBody ModelAndView routeList(@RequestBody Map<String,Object> map) throws Exception{
	    map.put("list", swBusServ.routeList(map));
	    return new ModelAndView("jsonView", map);
	}
	
	

	
}
