package kr.co.recotrip.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.recotrip.dao.MypageDAO;
import kr.co.recotrip.dto.AdminDTO;



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

	public ModelAndView toMypageMemberUpdateForm(String id) {
		HashMap<String, Object> map = dao.toMypageMemberUpdateForm(id);
		ModelAndView mav = new ModelAndView();
		mav.addObject("mypageMemberUpdateForm", map);
		mav.setViewName("mypageMemberUpdateForm");
		return mav;
	}

	public ModelAndView mypageMemberUpdate(HashMap<String, String> params, RedirectAttributes rAttr) {
		int mypageMemberUpdate = dao.mypageMemberUpdate(params);
		String msg = "회원정보 수정에 실패했습니다";
		ModelAndView mav = new ModelAndView();
		if(mypageMemberUpdate > 0) {
			msg = "회원정보 수정에 성공했습니다";
			mav.setViewName("redirect:/mypageList");
		}
		rAttr.addFlashAttribute("msg", msg);
		return mav;
	}
	
	@Transactional(isolation = Isolation.READ_COMMITTED)
	public ModelAndView myPageMemberDel(String id) {
		String reason = "회원 본인이 탈퇴";
		int myPageMemberDel = dao.myPageMemberDel(id);
		int myPageMemberMove = dao.myPageMemberMove(id,reason);
		ModelAndView mav = new ModelAndView();
		String msg = "회원 탈퇴에 실패했습니다.";
		String page = "redirect:/";
		if(myPageMemberDel > 0 && myPageMemberMove > 0) {
			msg = "회원 삭제에 성공했습니다";
			mav.addObject("msg", msg);
			mav.setViewName(page);
		}
		return mav;
	}

	public ArrayList<HashMap<String, Object>> myAskList(String id) {
		return dao.myAskList(id);
	}

}
