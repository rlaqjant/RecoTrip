package kr.co.recotrip.dao;

import java.util.ArrayList;
import java.util.HashMap;

public interface MypageDAO {

	String checkPW(String id, String password);

	ArrayList<HashMap<String, Object>> myDtList(String id);

	ArrayList<HashMap<String, Object>> myReviewList(String id);

	ArrayList<HashMap<String, Object>> myReplyList(String id);

	HashMap<String, Object> toMypageMemberUpdateForm(String id);

	int mypageMemberUpdate(HashMap<String, String> params);

	int myPageMemberDel(String id);

	int myPageMemberMove(String id, String reason);

	ArrayList<HashMap<String, Object>> myAskList(String id);

	ArrayList<HashMap<String, Object>> myLikeList(String id);

}
