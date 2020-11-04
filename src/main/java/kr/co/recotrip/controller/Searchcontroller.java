package kr.co.recotrip.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

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

import kr.co.recotrip.dto.SearchDTO;
import kr.co.recotrip.service.SearchService;

@Controller
public class Searchcontroller {
	
	@Autowired SearchService service;
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());

	@RequestMapping(value = "/toSearch", method = RequestMethod.GET)
	public String toSearch(Model model) {
		return "search";
	}
	
	@RequestMapping(value = "/auto", method = RequestMethod.POST)
	public @ResponseBody List<SearchDTO> auto(@RequestParam String searchText) {
		logger.info("자동완성: {}",searchText);
		return null;
	}
	
	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public ModelAndView search(@RequestParam HashMap<String, String> params) {
		logger.info("검색 파라미터 {}",params);
		
		return service.search(params);
	}
}
