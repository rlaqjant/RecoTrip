package kr.co.recotrip.controller;



import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.recotrip.service.DiaryReplyService;
import kr.co.recotrip.service.ReviewService;

@Controller
public class DiaryReplyController {
	
	private static final Logger logger = LoggerFactory.getLogger(DiaryReplyController.class);
	@Autowired DiaryReplyService service;

	@RequestMapping(value = "/commentList", method = RequestMethod.GET)
	public String commentCount(Model model) {


		return null;
	}
	
}
