package kr.co.recotrip.controller;

import java.util.HashMap;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.co.recotrip.service.DestService;

@Controller
public class DestController {
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Autowired DestService service;
	
	@RequestMapping(value = "/toSearch", method = RequestMethod.GET)
	public String toSearch(Model model) {
		return "search";
	}
	
	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public ModelAndView search(@RequestParam HashMap<String, String> params) {
		logger.info("검색 파라미터 {}",params);
		
		return service.search(params);
	}
	
	@RequestMapping(value = "/toDestDetail", method = RequestMethod.GET)
	public ModelAndView toDestDetail(@RequestParam String dest_num) {
		logger.info("여행지 번호 {}", dest_num);
		ModelAndView mav = new ModelAndView();
		int dest_bHit = service.getBhit(dest_num);
		double dest_rating =  service.getRating(dest_num);
		mav.addObject("dest_bHit",dest_bHit);
		mav.addObject("dest_rating",dest_rating);
		mav.addObject("dest_num",dest_num);
		mav.setViewName("destDetail");
		return mav;
	}
	
	@RequestMapping(value = "/destDetail",produces="application/json;charset=UTF-8" ,method = RequestMethod.GET)
	public @ResponseBody Object destDetail(@RequestParam String dest_num) {
		return service.destDetail(dest_num);
	}
}
