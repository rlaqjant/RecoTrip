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
import org.springframework.web.servlet.ModelAndView;

import kr.co.recotrip.service.DiaryService;


@Controller
public class DiaryController {
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Autowired DiaryService service;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {
		return "home";
	}
	
	@RequestMapping(value = "/tdList", method = RequestMethod.GET)
	public ModelAndView tdList(Model model) {
		
		ModelAndView mav = service.tdList();
		mav.setViewName("tdList");
		
		return mav;
	}

	//글쓰기 폼으로 보내기 
	@RequestMapping(value = "/tdWriteForm", method = RequestMethod.GET)
	public String tdWriteForm(Model model) {
		logger.info("글쓰기 폼");
		return "tdWriteForm";
	}
	
	@RequestMapping(value = "/tdDetail", method = RequestMethod.GET)
	public String tdDetail(Model model) {
		logger.info("디테일요청");
		return "tdDetail";
	}
	
}
