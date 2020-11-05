package kr.co.recotrip.service;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;


import kr.co.recotrip.dao.SuggestDAO;
import kr.co.recotrip.dto.SuggestDTO;

@Service
public class SuggestService {
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	@Autowired SuggestDAO dao;

	public ModelAndView ask_write(SuggestDTO dto, String id) {
		dto.setId(id);
		logger.info("dto 분해" +   dto.getAsk_content() +" / " + dto.getAsk_subject() +" / " + dto.getId() +" / " + dto.getAsk_sort());
		ModelAndView mav = new ModelAndView();
		String page = "redirect:/writeForm";
		String msg = "건의 종류를 선택하세요.";
		if(!dto.getAsk_sort().equals("null")) {
			int success = dao.ask_write(dto);
			logger.info("success : "+success);
			msg ="등록에 실패 했습니다.";
			if(success > 0) {
				page = "redirect:/ask_list";
				msg="등록에 성공했습니다.";
			}
		}
		mav.addObject("msg", msg);
		mav.setViewName(page);
		return mav;
	}
	
	public ModelAndView ask_list(String id) {
			
			ArrayList<SuggestDTO>ask_list = dao.ask_list();
			logger.info("size : "+ask_list.size());
			ModelAndView mav = new ModelAndView();
			mav.addObject("ask_list", ask_list);
			mav.setViewName("ask_list");
			
			return mav;
		}
	
	public ModelAndView ask_detail(String ask_num) {
		SuggestDTO dto = dao.ask_detail(ask_num);
		logger.info("dto : "+dto.getAsk_content());
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("info",dto);
		mav.setViewName("ask_detail");
		return mav;
	}

	
	
	public ModelAndView updateForm(String ask_num) {
		SuggestDTO dto = dao.ask_detail(ask_num);
		logger.info("dto : "+dto.getAsk_content());
		ModelAndView mav = new ModelAndView();
		mav.addObject("info", dto);
		mav.setViewName("ask_updateForm");
		
		return mav;
	}

	
	public void update(HashMap<String, String> params) {
		int ask_num = Integer.parseInt(params.get("ask_num"));
		String id = params.get("id"); 
		String ask_subject = params.get("ask_subject"); 
		String ask_content = params.get("ask_content"); 
		logger.info("수정수정수정 :"+ask_num+id+ask_subject+ask_content);
		int success = dao.update(id,ask_subject,ask_content,ask_num); 
		logger.info("success : "+success);
		
	}
	
	public void delete(String ask_num) {
		int success =  dao.delete(ask_num);
		
	}
	
		
		
	}
	

	
