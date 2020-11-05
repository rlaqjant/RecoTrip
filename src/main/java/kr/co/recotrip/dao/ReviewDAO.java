package kr.co.recotrip.dao;

import java.util.ArrayList;

import kr.co.recotrip.dto.ReviewDTO;

public interface ReviewDAO {

	ArrayList<ReviewDTO> reviewlist();

	int reviewwrite(String user,String review);

	int reviewupdate(String reNum, String upcontent);

	int reviewdelete(String reNum);

	void rating(String user, String score);

}
