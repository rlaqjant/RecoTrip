package kr.co.recotrip.dao;

import java.util.ArrayList;

import kr.co.recotrip.dto.MypageDTO;

public interface MypageDAO {

	ArrayList<MypageDTO> mp_review(String id);

}
