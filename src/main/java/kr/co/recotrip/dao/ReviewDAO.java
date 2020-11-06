package kr.co.recotrip.dao;

import java.util.ArrayList;
import java.util.List;

import kr.co.recotrip.dto.PagingVO;
import kr.co.recotrip.dto.ReviewDTO;

public interface ReviewDAO {

	
	List<ReviewDTO> reviewlist(PagingVO vo);

	int reviewwrite(String user,String review);

	int reviewupdate(String reNum, String upcontent);

	int reviewdelete(String reNum);

	void rating(String user, String score);
	
	int countBoard();


}
