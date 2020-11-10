package kr.co.recotrip.controller;



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

import kr.co.recotrip.dao.MemberDAO;
import kr.co.recotrip.service.MypageService;


@Controller
public class MypageController {
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	@Autowired MypageService service;
	
	@RequestMapping(value = "/mypage", method = RequestMethod.GET)
	public String mypage(Model model, HttpSession session) {
		
		return "checkPW";
	}
	
    @RequestMapping(value = "/checkPW", method = RequestMethod.GET)
    public String checkPW(@RequestParam String password, HttpSession session ,Model model) {
        
    	String id = (String) session.getAttribute("loginId");
        logger.info("비밀번호 : {}",password);
        boolean result = service.checkPW(id, password);
 
        if (result) {
        	
            return "mypage";
        } else {
        	
            model.addAttribute("msg", "비밀번호를 다시 입력해주세요");
 
            return "/checkPW";
 
        }
 
    }

	
	@RequestMapping(value = "/mp_review", method = RequestMethod.GET)
	public ModelAndView mp_review(Model model, HttpSession session) {
		String id = (String) session.getAttribute("loginId");
		logger.info("댓글 호출");		
		ModelAndView mav = service.mp_review(id);
		mav.setViewName("mp_review");
		return mav;
	}
	
	
		
}
