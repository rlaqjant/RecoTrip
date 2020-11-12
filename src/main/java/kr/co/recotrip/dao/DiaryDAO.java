package kr.co.recotrip.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.web.servlet.ModelAndView;

import kr.co.recotrip.dto.DiaryDTO;

public interface DiaryDAO {

	ArrayList<DiaryDTO> tdList();

	DiaryDTO tdDetail(String idx);

	int tdWrite(DiaryDTO bean);

	int tdWrite2(DiaryDTO bean);

	int tdWrite3(DiaryDTO bean);

	int tdWrite4(DiaryDTO bean);

	int tdWrite5(DiaryDTO bean);

	void fileWrite(int idx, String string, String key);

	String tdButton(String idx);

	int tdPDelete(String idx);
	
	ArrayList<String> getDelFileName(String idx);

	int tdDelete(String idx);

}
