package kr.co.recotrip.dao;

public interface LikeDAO {

	int getLikeCnt(String idx);

	int like(String idx, String loginId);

	int disLike(String idx, String loginId);

	int likeCheck(String idx, String loginId);

}
