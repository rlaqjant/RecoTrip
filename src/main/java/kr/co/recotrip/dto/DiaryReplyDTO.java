package kr.co.recotrip.dto;

import java.sql.Date;

import org.apache.ibatis.type.Alias;

@Alias("diaryReply")
public class DiaryReplyDTO {
	
	private int reply_num;
	private int diary_number;
	private String id;
	private String reply_content;
	private Date reply_reg_date;
	
	public int getReply_num() {
		return reply_num;
	}
	public void setReply_num(int reply_num) {
		this.reply_num = reply_num;
	}
	public int getDiary_number() {
		return diary_number;
	}
	public void setDiary_number(int diary_number) {
		this.diary_number = diary_number;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getReply_content() {
		return reply_content;
	}
	public void setReply_content(String reply_content) {
		this.reply_content = reply_content;
	}
	public Date getReply_reg_date() {
		return reply_reg_date;
	}
	public void setReply_reg_date(Date reply_reg_date) {
		this.reply_reg_date = reply_reg_date;
	}

}














