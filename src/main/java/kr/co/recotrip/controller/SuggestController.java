package kr.co.recotrip.controller;



import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.recotrip.dto.SuggestDTO;
import kr.co.recotrip.service.SuggestService;


@Controller
public class SuggestController {
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	@Autowired SuggestService service;
	
	@RequestMapping(value = "/ask_list", method = RequestMethod.GET)
	public ModelAndView ask_list(HttpSession session) {		
		logger.info("건의함 리스트 호출");		
		String id = (String) session.getAttribute("loginId");
		//String id = "test"; 
		
		ModelAndView mav = null;
		String msg = "";
		if(id != null) {
			mav = service.ask_list(id);
		}else {
			mav = new ModelAndView();
			mav.setViewName("/login");
			mav.addObject("msg", "로그인이 필요한 서비스 입니다.");
		}
	
		return mav;
	}
	@RequestMapping(value = "/ask_writeForm", method = RequestMethod.GET)
	public String ask_writeForm(Model model) {
		
		return "ask_writeForm";
	}
	
	@RequestMapping(value = "/ask_write", method = RequestMethod.POST)
	public ModelAndView ask_write(@ModelAttribute SuggestDTO dto, HttpSession session) {
		String id = (String) session.getAttribute("loginId");
		//String id = "test"; 
		return service.ask_write(dto,id);
		  }
	
	@RequestMapping(value = "/ask_detail", method = RequestMethod.GET)
	public ModelAndView ask_detail(@RequestParam String ask_num) {
		logger.info("글 자세히 보기:" + ask_num);
		
		return service.ask_detail(ask_num);
	}
	
	
	@RequestMapping(value = "/ask_updateForm", method = RequestMethod.GET)
	public ModelAndView ask_updateForm(@RequestParam String ask_num) {
		logger.info("수정하기"+ask_num);
		return service.updateForm(ask_num);
	}	
	
	
	@RequestMapping(value = "/ask_update", method = RequestMethod.POST) 
	 public String ask_update(@RequestParam HashMap<String, String> params) {
	 logger.info("수정params : {}",params); 
	 service.update(params); 
	 return "redirect:/ask_list"; 
	 }
	
	@RequestMapping(value = "/ask_delete", method = RequestMethod.GET)
	public String ask_delete(Model model, @RequestParam String ask_num) {
		logger.info("delete 요청 : "+ask_num);
		service.delete(ask_num);
		return "redirect:/ask_list";
	}
	
	@RequestMapping(value = "/answering", method = RequestMethod.POST)
	public ModelAndView answering(@RequestParam HashMap<String, String> params) {
		logger.info("params : " + params);
		return service.answering(params);
	}
	
	@RequestMapping(value = "/delAnswer", method = RequestMethod.GET)
	public ModelAndView delAnswer(@RequestParam String answer_num, RedirectAttributes rAttr) {
		logger.info("params : " + answer_num);
		return service.delAnswer(answer_num, rAttr);
	}
	
	}


