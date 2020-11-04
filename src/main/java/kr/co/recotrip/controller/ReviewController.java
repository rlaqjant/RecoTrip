package kr.co.recotrip.controller;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpSession;
import javax.xml.ws.Response;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.co.recotrip.dao.ReviewDAO;
import kr.co.recotrip.dto.ReviewDTO;
import kr.co.recotrip.service.ReviewService;

@Controller
public class ReviewController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	@Autowired ReviewService service;

	@RequestMapping(value = "/reviewlist", method = RequestMethod.GET)
	public ModelAndView reviewlist(Model model) {
		logger.info("댓글 리스트 불러오기");
		ModelAndView mav = new ModelAndView();
		ArrayList<ReviewDTO> dto = service.reviewlist();
		logger.info("list : "+dto);
		mav.addObject("info",dto);
		mav.setViewName("tripdetail");
		return mav;
	}
	
	@RequestMapping(value = "/reviewwrite", method = RequestMethod.GET)
	public String reviewwrite(@RequestParam String user, @RequestParam String review) {
		logger.info("아이디 : "+user+",후기 작성 : "+review);
		service.reviewwrite(user,review);
		return "redirect:/reviewlist";
	}
	
	@RequestMapping(value = "/reviewupdate", method = RequestMethod.POST)
	public String reviewupdate(@RequestParam String reNum, @RequestParam String upcontent) {
		logger.info("댓글 번호 : "+reNum+",수정할 내용 : "+upcontent);
		service.reviewupdate(reNum,upcontent);
		return "redirect:/reviewlist";
	}
	
	@RequestMapping(value = "/reviewdelete", method = RequestMethod.POST)
	public String reviewdelete(@RequestParam String reNum) {
		logger.info("삭제할 댓글 번호 : "+reNum);
		service.reviewdelete(reNum);
		return "redirect:/reviewlist";
	}
}