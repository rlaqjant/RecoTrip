package kr.co.recotrip.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import kr.co.recotrip.dao.MypageDAO;



@Service
public class MypageService {
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	@Autowired MypageDAO dao;

	public boolean checkPW(String id, String password) {
		String checkPW = dao.checkPW(id, password);
		boolean result = false;
		if(checkPW !=null) {
			result = true;
		}//비밀번호 틀리면 checkPW값 널
		
		return result;
	}

	public ArrayList<HashMap<String, Object>> myDtList(String id) {
		return dao.myDtList(id);
	}

	public ArrayList<HashMap<String, Object>> myReviewList(String id) {
		return dao.myReviewList(id);
	}

	public ArrayList<HashMap<String, Object>> myReplyList(String id) {
		return dao.myReplyList(id);
	}

}
