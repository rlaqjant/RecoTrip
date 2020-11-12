package kr.co.recotrip.dao;

import java.util.ArrayList;
import java.util.HashMap;

import kr.co.recotrip.dto.SearchDTO;

public interface DestDAO {

	ArrayList<SearchDTO> destNameSearch(HashMap<String, String> params);

	ArrayList<SearchDTO> destAddrSearch(HashMap<String, String> params);
	
	ArrayList<SearchDTO> restaurantNameSearch(HashMap<String, String> params);

	ArrayList<SearchDTO> restaurantAddrSearch(HashMap<String, String> params);

	ArrayList<SearchDTO> accomNameSearch(HashMap<String, String> params);

	ArrayList<SearchDTO> accomAddrSearch(HashMap<String, String> params);

	int getBhit(String dest_num);

	ArrayList<Integer> getRating(String dest_num);

	void upHit(String dest_num);

	ArrayList<SearchDTO> leportsReco(String who, String where);

	ArrayList<SearchDTO> cultureReco(String who, String where);

	ArrayList<SearchDTO> tourReco(String who, String where);

	ArrayList<SearchDTO> healingReco(String who, String where);

	ArrayList<SearchDTO> noResultReco(String where);


}
