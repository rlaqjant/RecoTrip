package kr.co.recotrip.dao;

import java.util.HashMap;

public interface MemberDAO {

	String login(String id, String pw);

	int join(HashMap<String, String> params);

	int overlay(String id);

}
