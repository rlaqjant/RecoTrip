package kr.co.recotrip.dao;

import java.util.ArrayList;
import java.util.HashMap;

import kr.co.recotrip.dto.SearchDTO;

public interface DestDAO {

	ArrayList<SearchDTO> destNameSearch(String search);

	ArrayList<SearchDTO> destAddrSearch(String search);
	
	ArrayList<SearchDTO> restaurantNameSearch(String search);

	ArrayList<SearchDTO> restaurantAddrSearch(String search);

	ArrayList<SearchDTO> accomNameSearch(String search);

	ArrayList<SearchDTO> accomAddrSearch(String search);

	int getBhit(String dest_num);

	ArrayList<Integer> getRating(String dest_num);

	void upHit(String dest_num);

	ArrayList<SearchDTO> leportsReco(String who, String where);

	ArrayList<SearchDTO> cultureReco(String who, String where);

	ArrayList<SearchDTO> tourReco(String who, String where);

	ArrayList<SearchDTO> healingReco(String who, String where);

	ArrayList<SearchDTO> noResultReco(String where);

	double getLong(String dest_num);

	double getLat(String dest_num);

	String getName(String dest_num);

}
