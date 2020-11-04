package kr.co.recotrip.dto;

import java.sql.Date;

import org.apache.ibatis.type.Alias;

@Alias("review")
public class ReviewDTO {

	private int review_num;
	private int dest_num;
	private String id;
	private String review_content;
	private Date review_reg_data;
	
	public int getReview_num() {
		return review_num;
	}
	public void setReview_num(int review_num) {
		this.review_num = review_num;
	}
	public int getDest_num() {
		return dest_num;
	}
	public void setDest_num(int dest_num) {
		this.dest_num = dest_num;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getReview_content() {
		return review_content;
	}
	public void setReview_content(String review_content) {
		this.review_content = review_content;
	}
	public Date getReview_reg_date() {
		return review_reg_data;
	}
	public void setReview_reg_date(Date review_reg_date) {
		this.review_reg_data = review_reg_date;
	}
	
}
