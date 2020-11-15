package kr.co.recotrip.dto;

import java.util.Date;

public class SuggestDTO {
	private int ask_num;
	private String id;
	private String ask_subject;
	private String ask_content;
	private String ask_sort;
	private String ask_reg_date;
	private int answer_num;
	private String answer_content;
	private String answer_reg_date;
	
	
	public String getAsk_reg_date() {
		return ask_reg_date;
	}
	public void setAsk_reg_date(String ask_reg_date) {
		this.ask_reg_date = ask_reg_date;
	}
	public int getAsk_num() {
		return ask_num;
	}
	public void setAsk_num(int ask_num) {
		this.ask_num = ask_num;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getAsk_subject() {
		return ask_subject;
	}
	public void setAsk_subject(String ask_subject) {
		this.ask_subject = ask_subject;
	}
	public String getAsk_content() {
		return ask_content;
	}
	public void setAsk_content(String ask_content) {
		this.ask_content = ask_content;
	}
	public String getAsk_sort() {
		return ask_sort;
	}
	public void setAsk_sort(String ask_sort) {
		this.ask_sort = ask_sort;
	}
	public int getAnswer_num() {
		return answer_num;
	}
	public void setAnswer_num(int answer_num) {
		this.answer_num = answer_num;
	}
	public String getAnswer_content() {
		return answer_content;
	}
	public void setAnswer_content(String answer_content) {
		this.answer_content = answer_content;
	}
	public String getAnswer_reg_date() {
		return answer_reg_date;
	}
	public void setAnswer_reg_date(String answer_reg_date) {
		this.answer_reg_date = answer_reg_date;
	}
	
	
	
	
}
