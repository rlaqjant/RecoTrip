package kr.co.recotrip.controller;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.recotrip.service.DiaryService;


@Controller
public class DiaryController {
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Autowired DiaryService service;

	
	@RequestMapping(value = "/tdList", method = RequestMethod.GET)
	public ModelAndView tdList(Model model) {
		ModelAndView mav = service.tdList();
		mav.setViewName("tdList");
		
		return mav;
	}

	//글쓰기 폼으로 보내기 
	@RequestMapping(value = "/tdWriteForm", method = RequestMethod.GET)
	public ModelAndView tdWriteForm(Model model, RedirectAttributes rAttr, HttpSession session) {
		logger.info("글쓰기 폼");
		ModelAndView mav = new ModelAndView();
		String msg = "";
		String page = "";
		String id = (String)session.getAttribute("loginId");
		logger.info("id : " + id);
		if(session.getAttribute("loginId")==null) {
			msg = "로그인이 필요한 서비스입니다.";
			page = "redirect:/tdList";
			
		}else {
			page = "tdWriteForm";
		}
		HashMap<String, String> fileList = new HashMap<String, String>();
		session.setAttribute("fileList", fileList);
		rAttr.addFlashAttribute("msg", msg);
		mav.addObject("id", id);
		mav.setViewName(page);
		return mav;
	}

	@RequestMapping(value = "/tdWrite", method = RequestMethod.POST)
	public ModelAndView tdWrite(HttpSession session, @RequestParam HashMap<String,String> params) {
		logger.info("글쓰기" + params.size());
		logger.info("params: {}",params);

		return service.tdWrite(params,session);
	}
	
	@RequestMapping(value = "/tdUploadForm", method = RequestMethod.GET)
	public ModelAndView tdUploadForm(@RequestParam String value) {
		logger.info("value : " + value);
		ModelAndView mav = new ModelAndView();
		mav.addObject("value", value);
		mav.setViewName("tdUploadForm");
		return mav;
	}
	
	@RequestMapping(value = "/tdFileUpload", method = RequestMethod.POST)
	public ModelAndView tdFileUpload(MultipartFile file, HttpSession session,@RequestParam String value) {
		logger.info("upload 요청");
		logger.info("value 들어오나? {}",value);
		logger.info("session : " + session);
		session.getAttribute("fileList");
		return service.tdFileUpload(file,session,value);
	}
	
	//파일 삭제
	@RequestMapping(value = "/tdFileDelete", method = RequestMethod.GET)
	public @ResponseBody HashMap<String, Object> tdFileDelete(@RequestParam String fileName, HttpSession session) {
		logger.info("fileDelete 요청 : "+fileName);
		return service.tdFileDelete(fileName, session);
		
	}
	
	
	@RequestMapping(value = "/tdDetail", method = RequestMethod.GET)
	public ModelAndView tdDetail(Model model, @RequestParam String idx) {
		logger.info("디테일요청");
		logger.info("idx: {}",idx);
		
		ModelAndView mav = service.tdDetail(idx);
		mav.setViewName("tdDetail");
		
		return mav;
	}
	
	@RequestMapping(value = "/tdButton", method = RequestMethod.GET)
	public @ResponseBody int tdButton(@RequestParam String idx, HttpSession session) {
		logger.info("일기 삭제 버튼 확인");
		logger.info("삭제할 일기 idx: {}",idx);
		String loginId = (String) session.getAttribute("loginId");
		logger.info("로그인 된 id : {}", loginId);
		String id = service.tdButton(idx);
		logger.info("글쓴이 id : {}", id);
		
		int result = 0;
		
		if(id.equals(loginId)) {
			result = 1;
		}
		
		return result;
	}
	
	@RequestMapping(value = "/tdDelete", method = RequestMethod.GET)
	public ModelAndView tdDelete(Model model, @RequestParam String idx, HttpSession session, RedirectAttributes rAttr) {
		logger.info("일기 삭제 요청");
		logger.info("삭제할 일기 idx: {}",idx);
		
		
	
		return service.tdDelete(idx, rAttr);
	}
	
	
}
