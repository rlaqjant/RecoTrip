package kr.co.recotrip.service;

import java.util.ArrayList;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.recotrip.dao.ReviewDAO;
import kr.co.recotrip.dto.ReviewDTO;

@Service
public class ReviewService {
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	@Autowired ReviewDAO dao;
	
	public ArrayList<ReviewDTO> reviewlist() {
		ArrayList<ReviewDTO> dto = dao.reviewlist();	
		logger.info("dto : "+dto);
		return dto;
	}
	public int reviewwrite(String user,String review) {
		int success = dao.reviewwrite(user,review);
		logger.info("성공? : "+success);
		return success;
	}

}
