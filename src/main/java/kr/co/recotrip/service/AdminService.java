package kr.co.recotrip.service;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.recotrip.dao.AdminDAO;
import kr.co.recotrip.dto.AdminDTO;

@Service
public class AdminService {
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	@Autowired AdminDAO dao;

	public ModelAndView adminMemberList() {
		logger.info("회원관리 서비스 진입");
		ArrayList<AdminDTO> adminMemberList = dao.adminMemberList();
		ModelAndView mav = new ModelAndView();
		mav.addObject("adminMemberList", adminMemberList);
		mav.setViewName("adminMemberList");
		return mav;
	}

	public ModelAndView adminMemberUpdateForm(String id) {
		logger.info("회원관리 업데이트폼 서비스 진입");
		AdminDTO adminMemberUpdateForm = dao.adminMemberUpdateForm(id);
		ModelAndView mav = new ModelAndView();
		mav.addObject("adminMemberUpdateForm", adminMemberUpdateForm);
		mav.setViewName("adminMemberUpdateForm");
		return mav;
	}

	public ModelAndView adminMemberUpdate(HashMap<String, String> params, RedirectAttributes rAttr) {
		logger.info("회원수정 서비스 진입");
		int adminMemberUpdate = dao.adminMemberUpdate(params);
		String msg = "회원정보 수정에 실패했습니다";
		ModelAndView mav = new ModelAndView();
		if(adminMemberUpdate > 0) {
			msg = "회원정보 수정에 성공했습니다";
			mav.addObject("adminMemberUpdate", adminMemberUpdate);
			mav.setViewName("redirect:/adminMemberUpdateForm?id="+params.get("id"));
		}
		rAttr.addFlashAttribute("msg", msg);
		return mav;
	}

	public ModelAndView adminMemberDeleteForm(String id) {
		ModelAndView mav = new ModelAndView();
		AdminDTO adminMemberDeleteForm = dao.adminMemberDeleteForm(id);
		mav.addObject("adminMemberDeleteForm", adminMemberDeleteForm);
		mav.setViewName("adminMemberDeleteForm");
		return mav;
	}

	public ModelAndView adminMemberDelete(HashMap<String, String> params) {
		int adminMemberDelete = dao.adminMemberDelete(params);
		int adminMemberMove = dao.adminMemberMove(params);
		ModelAndView mav = new ModelAndView();
		String msg = "회원 삭제에 실패했습니다.";
		String page = "redirect:/adminMemberList";
		if(adminMemberDelete > 0 && adminMemberMove > 0) {
			msg = "회원 삭제에 성공했습니다";
			mav.addObject("msg", msg);
			mav.setViewName(page);
		}
		return mav;
	}

	public ModelAndView adminDeletedMember() {
		ArrayList<AdminDTO> adminDeletedMember = dao.adminDeletedMember();
		ModelAndView mav = new ModelAndView();
		mav.addObject("adminDeletedMember", adminDeletedMember);
		mav.setViewName("adminDeletedMember");
		return mav;
	}

	public ModelAndView adminResetData(String id, RedirectAttributes rAttr) {
		int adminResetData = dao.adminResetData(id);
		ModelAndView mav = new ModelAndView();
		String msg = "삭제에 실패했습니다";
		if(adminResetData > 0) {
			msg = "삭제에 성공했습니다";
			mav.setViewName("redirect:/adminDeletedMember");
		}
		rAttr.addFlashAttribute("msg", msg);
		return mav;
	}

	public ModelAndView memberSearch(String keyword) {
		ArrayList<AdminDTO> memberSearch = dao.memberSearch(keyword);
		ModelAndView mav = new ModelAndView();
		mav.addObject("memberSearch", memberSearch);
		mav.setViewName("memberSearch");
		return mav;
	}
	
	public ArrayList<HashMap<String, Object>> memberDtList(String id) {
		return dao.memberDtList(id);
	}

	public ArrayList<HashMap<String, Object>> memberReviewList(String id) {
		return dao.memberReviewList(id);
	}

	public ArrayList<HashMap<String, Object>> memberReplyList(String id) {
		return dao.memberReplyList(id);
	}

	public ModelAndView adminTdDelete(String idx, HttpSession session) {
		int result = dao.adminTdDelete(idx);
		String id =(String) session.getAttribute("memberId");
		ModelAndView mav = new ModelAndView();
		String msg="삭제 실패";
		if(result>0) {
			msg="삭제 성공";
		}
		mav.addObject("msg",msg);
		mav.setViewName("redirect:/adminMembersWriteList?id="+id);
		return mav;
	}

	public ModelAndView adminCommentDelete(String idx, HttpSession session) {
		int result = dao.adminCommentDelete(idx);
		String id =(String) session.getAttribute("memberId");
		ModelAndView mav = new ModelAndView();
		String msg="삭제 실패";
		if(result>0) {
			msg="삭제 성공";
		}
		mav.addObject("msg",msg);
		mav.setViewName("redirect:/adminMembersWriteList?id="+id);
		return mav;
	}

	public ModelAndView adminReviewdelete(String idx, HttpSession session) {
		int result = dao.adminReviewdelete(idx);
		String id =(String) session.getAttribute("memberId");
		ModelAndView mav = new ModelAndView();
		String msg="삭제 실패";
		if(result>0) {
			msg="삭제 성공";
		}
		mav.addObject("msg",msg);
		mav.setViewName("redirect:/adminMembersWriteList?id="+id);
		return mav;
	}

}
