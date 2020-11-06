package kr.co.recotrip.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import kr.co.recotrip.dto.SearchDTO;

public interface DestDAO {

	ArrayList<SearchDTO> nameSearch(HashMap<String, String> params);

	ArrayList<SearchDTO> addrSearch(HashMap<String, String> params);

	int getBhit(String dest_num);

	ArrayList<Integer> getRating(String dest_num);

	void upHit(String dest_num);


}
