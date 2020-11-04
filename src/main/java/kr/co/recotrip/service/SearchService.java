package kr.co.recotrip.service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.recotrip.dao.SearchDAO;

@Service
public class SearchService {
	
	@Autowired SearchDAO dao;

	public void saerch(HashMap<String, String> params) {
		params.get("searchCat");
	}

}
