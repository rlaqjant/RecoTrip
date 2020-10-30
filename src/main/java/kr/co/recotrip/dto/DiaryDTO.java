package kr.co.recotrip.dto;

import org.apache.ibatis.type.Alias;

@Alias("diary")
public class DiaryDTO {
	
	private int diary_num;
	private String id;
	private String diary_subject;
	private String diary_content;
	private String diary_reg_date;
	private String diary_public;
	
	
	public int getDiary_num() {
		return diary_num;
	}
	public void setDiary_num(int diary_num) {
		this.diary_num = diary_num;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getDiary_subject() {
		return diary_subject;
	}
	public void setDiary_subject(String diary_subject) {
		this.diary_subject = diary_subject;
	}
	public String getDiary_content() {
		return diary_content;
	}
	public void setDiary_content(String diary_content) {
		this.diary_content = diary_content;
	}
	public String getDiary_reg_date() {
		return diary_reg_date;
	}
	public void setDiary_reg_date(String diary_reg_date) {
		this.diary_reg_date = diary_reg_date;
	}
	public String getDiary_public() {
		return diary_public;
	}
	public void setDiary_public(String diary_public) {
		this.diary_public = diary_public;
	}
	

}














