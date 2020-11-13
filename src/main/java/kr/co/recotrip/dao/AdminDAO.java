package kr.co.recotrip.dao;

import java.util.ArrayList;
import java.util.HashMap;

import kr.co.recotrip.dto.AdminDTO;

public interface AdminDAO {

	ArrayList<AdminDTO> adminMemberList();

	AdminDTO adminMemberUpdateForm(String id);

	int adminMemberUpdate(HashMap<String, String> params);

	int adminMemberDelete(HashMap<String, String> params);

	int moveToBlack(String id);

	AdminDTO adminMemberDeleteForm(String id);

	int adminMemberMove(HashMap<String, String> params);

	ArrayList<AdminDTO> adminDeletedMember();

	int adminResetData(String id);

	ArrayList<AdminDTO> memberSearch(String keyword);

	ArrayList<HashMap<String, Object>> memberDtList(String id);

	ArrayList<HashMap<String, Object>> memberReviewList(String id);

	ArrayList<HashMap<String, Object>> memberReplyList(String id);

	int adminTdDelete(String idx);

	int adminCommentDelete(String idx);

	int adminReviewdelete(String idx);

	int adminRatingDelete(String idx, String id);

	int autoDelete();

}
