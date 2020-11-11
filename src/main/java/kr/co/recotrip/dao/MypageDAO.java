package kr.co.recotrip.dao;

import java.util.ArrayList;
import java.util.HashMap;

public interface MypageDAO {

	String checkPW(String id, String password);

	ArrayList<HashMap<String, Object>> myDtList(String id);

	ArrayList<HashMap<String, Object>> myReviewList(String id);

	ArrayList<HashMap<String, Object>> myReplyList(String id);

}
