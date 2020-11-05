package kr.co.recotrip.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import kr.co.recotrip.dao.SearchDAO;
import kr.co.recotrip.dto.SearchDTO;

@Service
public class SearchService {
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Autowired SearchDAO dao;

	public ModelAndView search(HashMap<String, String> params) {
		ModelAndView mav = new ModelAndView();
		
		String searchCat = params.get("searchCat");
		
		ArrayList<SearchDTO> list = null;
		
		if(searchCat.equals("name")) {
			list = dao.nameSearch(params);
			if(!list.isEmpty()) {
				mav.addObject("list", list);
			}else {
				mav.addObject("msg", "검색결과가 없습니다.");
			}
		}else {
			dao.addrSearch(params);
		}
		mav.setViewName("searchResult");
		return mav;
	}

}
