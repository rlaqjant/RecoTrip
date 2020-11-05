package kr.co.recotrip.dao;

import java.util.ArrayList;
import java.util.HashMap;

import kr.co.recotrip.dto.SearchDTO;

public interface SearchDAO {

	ArrayList<SearchDTO> nameSearch(HashMap<String, String> params);

	void addrSearch(HashMap<String, String> params);

}
