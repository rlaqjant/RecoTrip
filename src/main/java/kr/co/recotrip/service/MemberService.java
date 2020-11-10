package kr.co.recotrip.service;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import kr.co.recotrip.dao.MemberDAO;

@Service
public class MemberService {
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	@Autowired MemberDAO dao;

	public String login(String id, String pw) {
		String result = dao.login(id, pw);
		
		return result;
	}

	public ModelAndView join(HashMap<String, String> params) {
		int success = dao.join(params);
		logger.info("성공여부 : "+success);
		ModelAndView mav = new ModelAndView();
		String page = "join";
		String msg = "회원가입 실패했습니다";
		if(success>0) {
			page = "login";
			msg = "회원가입에 성공했습니다.";
		}
		mav.addObject("msg", msg);
		mav.setViewName(page);
		return mav;
	}

	public HashMap<String, Object> overlay(String id, HttpSession session) {
		int cnt = dao.overlay(id);
		logger.info("결과 값 : "+cnt);
		boolean success = false;
		if(cnt>0) {
			success = true;
		}
		session.setAttribute("overchk", "checkclear");
		System.out.println(session.getAttribute("overchk"));
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("overlay", success);
		return map;
	}


}
