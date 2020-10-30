package kr.co.recotrip.dao;

import java.util.ArrayList;

import kr.co.recotrip.dto.ReviewDTO;

public interface ReviewDAO {

	ArrayList<ReviewDTO> reviewlist();

	int reviewwrite(String user,String review);

}
