package kr.co.recotrip.service;

import java.util.ArrayList;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import kr.co.recotrip.dao.DiaryDAO;
import kr.co.recotrip.dto.DiaryDTO;

@Service
public class DiaryService {

	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Autowired DiaryDAO dao;

	public ModelAndView tdList() {
		
		ModelAndView mav =new ModelAndView();

		ArrayList<DiaryDTO> diaryList = dao.tdList();
		mav.addObject("diaryList",diaryList);
		logger.info("diaryList : {}",diaryList);
		
		
		
		return mav;
	}

	public ModelAndView tdDetail(String idx) {
		
		ModelAndView mav =new ModelAndView();

		DiaryDTO list = dao.tdDetail(idx);
		mav.addObject("list",list);
		
		logger.info("diaryList : {}",list);
		
		
		
		return mav;
	}

}
