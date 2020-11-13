package kr.co.recotrip.controller;

import java.util.ArrayList;
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

import kr.co.recotrip.dto.SearchDTO;
import kr.co.recotrip.service.DestService;

@Controller
public class DestController {
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Autowired DestService service;
	
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String index(Model model) {
		return "index";
	}
	
	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public ModelAndView search(@RequestParam HashMap<String, String> params) {
		logger.info("검색 파라미터 {}",params);
		ModelAndView mav = new ModelAndView();
		ArrayList<SearchDTO> list = service.search(params);
		
		if(!list.isEmpty()) {
			mav.addObject("list", list);
		}else {
			mav.addObject("msg", "검색결과가 없어요 여행지 추천을 받아보는건 어떨까요?");
		}
		
		mav.setViewName("searchResult");
		return mav;
	}
	
	@RequestMapping(value = "/toDestDetail", method = RequestMethod.GET)
	public ModelAndView toDestDetail(@RequestParam String dest_num) {
		logger.info("여행지 번호 {}", dest_num);
		ModelAndView mav = new ModelAndView();
		int dest_bHit = service.getBhit(dest_num);
		double dest_rating =  service.getRating(dest_num);
		double dest_long = service.getLong(dest_num);
		double dest_lat = service.getLat(dest_num);
		String dest_name = service.dest_name(dest_num);
		logger.info("경도 : " + dest_long);
		logger.info("위도 : " + dest_lat);
		logger.info("이름 : " + dest_name);
		mav.addObject("dest_long", dest_long);
		mav.addObject("dest_lat", dest_lat);
		mav.addObject("dest_name", dest_name);
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
	
	@RequestMapping(value = "/reco", method = RequestMethod.POST)
	public ModelAndView reco(@RequestParam int whoNum, @RequestParam int whatNum,  @RequestParam int whereNum) {
		String[] whoP = {"couple", "family", "freind", "alone"};
		String[] whatP = {"leports", "culture", "tour", "healing"};
		String[] whereP = {"서울특별시", "인천광역시", "대전광역시", "대구광역시", "광주광역시", "부산광역시", "울산광역시", "제주도", "경기도", "강원도", "충청북도", "충청남도", "경상북도", "경상남도", "전라북도", "전라남도"};
		String who = whoP[whoNum];
		String what = whatP[whatNum];
		String where = whereP[whereNum];
		logger.info("누구랑 : "+who+", 뭘 : "+what+", 어디로 : "+where);
		return service.reco(who, what, where);
	}
	
	@RequestMapping(value = "/getYoutubeData", method = RequestMethod.GET)
	public @ResponseBody HashMap<String, Object> reviewwrite(@RequestParam int whereNum) {
		String[] whereArry = {"서울특별시", "인천광역시", "대전광역시", "대구광역시", "광주광역시", "부산광역시", "울산광역시", "제주도", "경기도", "강원도", "충청북도", "충청남도", "경상북도", "경상남도", "전라북도", "전라남도"};
		String where = whereArry[whereNum];
		logger.info("보고싶은지역 : "+where);
		
		return service.getYoutubeData(where);
	}
}

