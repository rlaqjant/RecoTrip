package kr.co.recotrip.controller;

import java.util.HashMap;

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

import kr.co.recotrip.service.AdminService;

@Controller
public class AdminController {
	
	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
	@Autowired AdminService service;
	
	// 관리자 메뉴 진입 요청
	@RequestMapping(value = "/adminMain", method = RequestMethod.GET)
	public String adminMain(Model model) {
		logger.info("관리자 메뉴로 이동");
		return "adminMain";
	}
	
	// 회원관리 페이지 이동 요청
	@RequestMapping(value = "/adminMemberList", method = RequestMethod.GET)
	public ModelAndView adminMemberList(Model model) {
		logger.info("회원관리 페이지 이동 요청");
		ModelAndView mav = new ModelAndView();
		mav = service.adminMemberList();
		return mav;
	}
	
	// 회원관리 -> 회원수정 폼 페이지 이동
	@RequestMapping(value = "/adminMemberUpdateForm", method = RequestMethod.GET)
	public ModelAndView adminMemberUpdateForm(@RequestParam String id) {
		logger.info("수정할 ID : " + id);
		return service.adminMemberUpdateForm(id);
	}
	
	// 회원수정
	@RequestMapping(value = "/adminMemberUpdate", method = RequestMethod.POST)
	public ModelAndView adminMemberUpdate(@RequestParam HashMap<String, String> params, RedirectAttributes rAttr) {
		logger.info("params : {}", params);
		return service.adminMemberUpdate(params, rAttr);
	}
	
	// 회원탈퇴 폼 이동
	@RequestMapping(value = "/adminMemberDeleteForm", method = RequestMethod.GET)
	public ModelAndView adminMemberDeleteForm(@RequestParam String id) {
		logger.info("params : " + id);
		return service.adminMemberDeleteForm(id);
	}
	
	// 회원 삭제 처리
	@RequestMapping(value = "/adminMemberDelete", method = RequestMethod.GET)
	public ModelAndView adminMemberDelete(@RequestParam HashMap<String, String> params) {
		logger.info("params : {}", params);
		return service.adminMemberDelete(params);
	}
	
	// 삭제된 회원 목록 테이블
	@RequestMapping(value = "/adminDeletedMember", method = RequestMethod.GET)
	public ModelAndView adminDeletedMember() {
		return service.adminDeletedMember();
	}
	
	// 회원 데이터 완전 제거
	@RequestMapping(value = "/adminResetData", method = RequestMethod.GET)
	public ModelAndView adminResetData(@RequestParam String id, RedirectAttributes rAttr) {
		return service.adminResetData(id, rAttr);
	}
	
	// 회원 검색 기능
	@RequestMapping(value = "/memberSearch", method = RequestMethod.GET)
	public ModelAndView memberSearch(@RequestParam String keyword) {
		logger.info("params : {}" + keyword);
		return service.memberSearch(keyword);
	}
	
}
