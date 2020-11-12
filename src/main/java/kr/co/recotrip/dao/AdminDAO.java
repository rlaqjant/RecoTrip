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

}
