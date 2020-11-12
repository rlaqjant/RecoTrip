package kr.co.recotrip.controller;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

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

import kr.co.recotrip.service.MemberService;

@Controller
public class MemberController {
	
private Logger logger = LoggerFactory.getLogger(this.getClass());
@Autowired MemberService service;
	
	@RequestMapping(value = "/loginPage", method = RequestMethod.GET)
	public String loginPage(Model model) {
		return "login";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView login(@RequestParam String id, @RequestParam String pw, HttpSession session) {
		
		String result = service.login(id, pw);
		ModelAndView mav = new ModelAndView();
		String page = "";
		String msg = "";
		
		try {
			if(result.equals(id)) {
				session.setAttribute("loginId", id);
				page = "home";
				msg = "로그인 성공";
			}
		} catch (Exception e) {
			page = "home";
			msg = "로그인 실패";
		}
		if(id.equals("admin")) {
			page="adminMain";
		}
		mav.addObject("msg", msg);
		mav.setViewName(page);
		
		return mav;
	}
	
	@RequestMapping(value = "/joinForm", method = RequestMethod.GET)
	public String joinForm(Model model) {
		return "joinForm";
	}
	
	@RequestMapping(value = "/join", method = RequestMethod.POST)
	public ModelAndView join(@RequestParam HashMap<String, String> params, HttpSession session) {
		logger.info("params : " + params);
		String overchk = (String) session.getAttribute("overchk");
		logger.info(params.get("id")+"/"+params.get("pw"));
		logger.info("받아온 파라미터 갯수 : " + params.size());
		logger.info("중복체크 여부 : " + overchk);
		ModelAndView mav = new ModelAndView();
		String msg = null;
		if(params.size()<5) {
			msg  = "빈칸을 채워 주세요";
			mav.addObject("msg", msg);
			mav.setViewName("home");
		}else if(overchk == null){
			msg = "아이디 중복 체크를 눌주세요";
			mav.addObject("msg", msg);
			mav.setViewName("home");
		} else {
			mav = service.join(params);
			session.removeAttribute("overchk");
		}
		return mav;
	}
	
	@RequestMapping(value = "/overlay", method = RequestMethod.GET)
	public @ResponseBody HashMap<String, Object> overlay(@RequestParam String id, HttpSession session) {
		logger.info("중복체크 : "+id);
		return service.overlay(id,session);
	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(Model model, HttpSession session) {
		session.removeAttribute("loginId");
		model.addAttribute("msg", "로그아웃 되었습니다.");
		return "home";
	}

}
