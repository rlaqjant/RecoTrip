package kr.co.recotrip.service;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;

import kr.co.recotrip.dao.ReviewDAO;
import kr.co.recotrip.dto.PagingVO;
import kr.co.recotrip.dto.ReviewDTO;

@Service
public class ReviewService {
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	@Autowired ReviewDAO dao;

	public List<ReviewDTO> reviewlist(PagingVO vo, String dest_num) {
		return dao.reviewlist(vo, dest_num);
	}
	
	@Transactional(isolation = Isolation.READ_COMMITTED)
	public int reviewwrite(String user,String review,String score, String dest_num) {
		int success = dao.reviewwrite(user,review, dest_num);
		dao.rating(user,score,dest_num);
		logger.info("성공? : "+success);
		return success;
	}
	public int reviewupdate(String reNum, String upcontent) {
		int success = dao.reviewupdate(reNum,upcontent);
		logger.info("수정 성공? :"+success);
		return success;
	}
	public int reviewdelete(String reNum, String userid, String dest_num) {
		dao.ratingDelete(userid,dest_num);
		int success = dao.reviewdelete(reNum);
		return success;
	}

	public int countBoard(String dest_num) {
		return dao.countBoard(dest_num);
	}




}
