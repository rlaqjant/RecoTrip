package kr.co.recotrip.dao;

import java.util.ArrayList;
import java.util.HashMap;


import kr.co.recotrip.dto.SuggestDTO;



public interface SuggestDAO {

	int ask_write(SuggestDTO dto);
	
	int update(String id, String ask_subject, String ask_content, int ask_num);
	
	SuggestDTO ask_detail(String ask_num);
	
	int delete(String ask_num);

	ArrayList<SuggestDTO> ask_list();

	

}
