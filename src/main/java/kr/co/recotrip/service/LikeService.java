package kr.co.recotrip.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.recotrip.dao.LikeDAO;

@Service
public class LikeService {

	@Autowired LikeDAO dao;
	
	public int getLikeCnt(String idx) {
		return dao.getLikeCnt(idx);
	}

	public int like(String idx, String loginId) {
		return dao.like(idx,loginId);
	}

	public int disLike(String idx, String loginId) {
		return dao.disLike(idx,loginId);
	}

	public int likeCheck(String idx, String loginId) {
		return dao.likeCheck(idx,loginId);
	}

}
