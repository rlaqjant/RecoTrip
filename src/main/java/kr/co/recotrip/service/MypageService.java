package kr.co.recotrip.service;

import java.util.ArrayList;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import kr.co.recotrip.dao.MypageDAO;

import kr.co.recotrip.dto.MypageDTO;


@Service
public class MypageService {
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	@Autowired MypageDAO dao;
	
	public ModelAndView mp_review(String id) {
		ModelAndView mav = new ModelAndView();
		
		
		ArrayList<MypageDTO>mp_review = dao.mp_review(id);
		
		mav.addObject("mp_review", mp_review);
		
		
		return mav;
		
	}

	public boolean checkPW(String id, String password) {
		String checkID = dao.checkPW(id, password);
		logger.info("pw :"+password);
		logger.info("param : "+checkID);
		boolean result = false;
		if(checkID.equals(password)) {
			result = true;
		}
		
		return result;
	}

}
