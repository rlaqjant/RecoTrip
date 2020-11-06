package kr.co.recotrip.dto;

import org.apache.ibatis.type.Alias;

@Alias("search")
public class SearchDTO {
	
	private int dest_num;
	private String dest_name;
	private String dest_category;
	private int rating;
	private String dest_detail_addr;
	private String dest_pic_url;
	
	public int getDest_num() {
		return dest_num;
	}
	public void setDest_num(int dest_num) {
		this.dest_num = dest_num;
	}
	public String getDest_name() {
		return dest_name;
	}
	public void setDest_name(String dest_name) {
		this.dest_name = dest_name;
	}
	public String getDest_category() {
		return dest_category;
	}
	public void setDest_category(String dest_category) {
		this.dest_category = dest_category;
	}
	public int getRating() {
		return rating;
	}
	public void setRating(int rating) {
		this.rating = rating;
	}
	public String getDest_detail_addr() {
		return dest_detail_addr;
	}
	public void setDest_detail_addr(String dest_detail_addr) {
		this.dest_detail_addr = dest_detail_addr;
	}
	public String getDest_pic_url() {
		return dest_pic_url;
	}
	public void setDest_pic_url(String dest_pic_url) {
		this.dest_pic_url = dest_pic_url;
	}
	
	

}
