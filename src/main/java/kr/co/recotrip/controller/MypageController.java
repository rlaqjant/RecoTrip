package kr.co.recotrip.controller;



import java.util.ArrayList;
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
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.recotrip.service.MypageService;


@Controller
public class MypageController {
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	@Autowired MypageService service;
	
	@RequestMapping(value = "/mypage", method = RequestMethod.GET)
	public String mypage(Model model, HttpSession session) {
		return "checkPW";
	}
	
    @RequestMapping(value = "/checkPW", method = RequestMethod.POST)
    public String checkPW(@RequestParam String password, HttpSession session ,Model model) {
    	String id = (String) session.getAttribute("loginId");
        logger.info("비밀번호 : {}",password);
        boolean result = service.checkPW(id, password);
        String page = "/checkPW";
        if (result) {
        	page="redirect:/mypageList";
        } else {
            model.addAttribute("msg", "비밀번호를 다시 입력해주세요");
        }
        
        return page;
    }
    
    @RequestMapping(value = "/mypageList", method = RequestMethod.GET)
	public ModelAndView mypageList(HttpSession session) {
    	String id = (String) session.getAttribute("loginId");
    	logger.info("마이페이지 볼 아이디 : "+id);
    	ArrayList<HashMap<String, Object>> myDtList = service. myDtList(id);
    	ArrayList<HashMap<String, Object>> myReviewList = service. myReviewList(id);
    	ArrayList<HashMap<String, Object>> myReplyList = service. myReplyList(id);
    	ArrayList<HashMap<String, Object>> myAskList = service.myAskList(id);
    	ArrayList<HashMap<String, Object>> myLikeList = service. myLikeList(id);
    	
    	logger.info("체크 : "+ myAskList);
    	ModelAndView mav = new ModelAndView();
    	mav.addObject("myDtList", myDtList);
    	mav.addObject("myDtListCnt", myDtList.size());
    	mav.addObject("myReviewList", myReviewList);
    	mav.addObject("myReviewListCnt", myReviewList.size());
    	mav.addObject("myReplyList", myReplyList);
    	mav.addObject("myReplyListCnt", myReplyList.size());
    	mav.addObject("myAskList", myAskList);
    	mav.addObject("myAskListCnt", myAskList.size());
    	mav.addObject("myLikeList", myLikeList);
    	mav.addObject("myLikeListCnt", myLikeList.size());
    	
    	mav.addObject("myAskList", myAskList);
    	
    	mav.setViewName("mypage");
		return mav;
	}
    
    @RequestMapping(value = "/toMypageMemberUpdateForm", method = RequestMethod.GET)
	public ModelAndView toMypageMemberUpdateForm(Model model, HttpSession session) {
		String id = (String) session.getAttribute("loginId");
		model.addAttribute("id", id);
		return service.toMypageMemberUpdateForm(id);
	}
    
    @RequestMapping(value = "/mypageMemberUpdate", method = RequestMethod.POST)
	public ModelAndView mypageMemberUpdate(@RequestParam HashMap<String, String> params, RedirectAttributes rAttr) {
		return service.mypageMemberUpdate(params, rAttr);
	}

    // 회원 삭제 처리
 	@RequestMapping(value = "/myPageMemberDel", method = RequestMethod.GET)
 	public ModelAndView myPageMemberDel(HttpSession session) {
 		String id = (String) session.getAttribute("loginId");
 		session.removeAttribute("loginId");
 		return service.myPageMemberDel(id);
 	}
}
