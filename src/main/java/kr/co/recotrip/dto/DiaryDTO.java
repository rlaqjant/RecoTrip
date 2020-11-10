package kr.co.recotrip.dto;

import org.apache.ibatis.type.Alias;

@Alias("diary")
public class DiaryDTO {
	
	private int diary_number;
	private String id;
	private String diary_subject;
	private String diary_main;
	private String diary_content1;
	private String diary_content2;
	private String diary_content3;
	private String diary_content4;
	private String diary_content5;
	private String diary_reg_date;
	private String diary_public;
	
	// 사진 
	private int pic_num;
	private String orif;
	private String newf;
	private int f_category;
	
	
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
	public String getDiary_subject() {
		return diary_subject;
	}
	public void setDiary_subject(String diary_subject) {
		this.diary_subject = diary_subject;
	}
	public String getDiary_main() {
		return diary_main;
	}
	public void setDiary_main(String diary_main) {
		this.diary_main = diary_main;
	}
	public String getDiary_content1() {
		return diary_content1;
	}
	public void setDiary_content1(String diary_content1) {
		this.diary_content1 = diary_content1;
	}
	public String getDiary_content2() {
		return diary_content2;
	}
	public void setDiary_content2(String diary_content2) {
		this.diary_content2 = diary_content2;
	}
	public String getDiary_content3() {
		return diary_content3;
	}
	public void setDiary_content3(String diary_content3) {
		this.diary_content3 = diary_content3;
	}
	public String getDiary_content4() {
		return diary_content4;
	}
	public void setDiary_content4(String diary_content4) {
		this.diary_content4 = diary_content4;
	}
	public String getDiary_content5() {
		return diary_content5;
	}
	public void setDiary_content5(String diary_content5) {
		this.diary_content5 = diary_content5;
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
	public int getPic_num() {
		return pic_num;
	}
	public void setPic_num(int pic_num) {
		this.pic_num = pic_num;
	}
	public String getOrif() {
		return orif;
	}
	public void setOrif(String orif) {
		this.orif = orif;
	}
	public String getNewf() {
		return newf;
	}
	public void setNewf(String newf) {
		this.newf = newf;
	}
	public int getF_category() {
		return f_category;
	}
	public void setF_category(int f_category) {
		this.f_category = f_category;
	}
	
	

	
	

}














