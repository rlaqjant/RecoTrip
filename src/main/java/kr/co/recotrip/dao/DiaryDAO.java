package kr.co.recotrip.dao;

import java.util.ArrayList;
import java.util.HashMap;

import kr.co.recotrip.dto.DiaryDTO;

public interface DiaryDAO {

	ArrayList<DiaryDTO> tdList();

	DiaryDTO tdDetail(String idx);

	void tdWrite(HashMap<String, String> params);

	void tdWrite2(HashMap<String, String> params);

	void tdWrite3(HashMap<String, String> params);

	void tdWrite4(HashMap<String, String> params);

	void tdWrite5(HashMap<String, String> params);

}
