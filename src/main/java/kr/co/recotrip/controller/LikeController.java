package kr.co.recotrip.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.recotrip.service.LikeService;

@Controller
public class LikeController {
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Autowired LikeService service;
	
	@RequestMapping(value = "/getLikeCnt", method = RequestMethod.POST)
	public @ResponseBody int getLikeCnt(@RequestParam String idx) {
		return service.getLikeCnt(idx);
	}
	@RequestMapping(value = "/like", method = RequestMethod.POST)
	public @ResponseBody int like(@RequestParam String idx, @RequestParam String loginId) {
		return service.like(idx,loginId);
	}
	@RequestMapping(value = "/disLike", method = RequestMethod.POST)
	public @ResponseBody int disLike(@RequestParam String idx, @RequestParam String loginId) {
		return service.disLike(idx,loginId);
	}
	@RequestMapping(value = "/likeCheck", method = RequestMethod.POST)
	public @ResponseBody int likeCheck(@RequestParam String idx, HttpSession session) {
		String loginId = (String) session.getAttribute("loginId");
		return service.likeCheck(idx,loginId);
	}
}

