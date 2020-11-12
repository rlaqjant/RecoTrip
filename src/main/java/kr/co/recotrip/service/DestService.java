package kr.co.recotrip.service;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.servlet.ModelAndView;

import kr.co.recotrip.dao.DestDAO;
import kr.co.recotrip.dto.SearchDTO;

@Service
public class DestService {
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Autowired DestDAO dao;
	
	public ArrayList<SearchDTO> search(HashMap<String, String> params) {
		ModelAndView mav = new ModelAndView();
		
		String searchCatDetail = params.get("searchCatDetail");
		String searchCat = params.get("searchCat");
		String search = params.get("search");
		
		ArrayList<SearchDTO> list = null;
		int total = 0;
		
		if(searchCatDetail.equals("dest")) {
			if(searchCat.equals("name")) {
				list = dao.destNameSearch(search);
			}else {
				list = dao.destAddrSearch(search);
			}
		}else if(searchCatDetail.equals("restaurant")) {
			if(searchCat.equals("name")) {
				list = dao.restaurantNameSearch(search);
			}else {
				list = dao.restaurantAddrSearch(search);
			}
		}else{
			if(searchCat.equals("name")) {
				list = dao.accomNameSearch(search);
			}else {
				list = dao.accomAddrSearch(search);
			}
		}
		
		
		return list;
	}
	

	public String destDetail(String dest_num) {
		ModelAndView mav = new ModelAndView();
		String json = "";
		try {
			StringBuilder urlBuilder = new StringBuilder("http://api.visitkorea.or.kr/openapi/service/rest/KorService/detailCommon"); /*URL*/
	        urlBuilder.append("?" + URLEncoder.encode("ServiceKey","UTF-8") + "=izL1fDnr%2FEU05FhF29tUogaC84yzWMJ%2BWncvCYUTQ0PxLytYFXkCBc74cQbkkxscgyOLYoaRTVJ8bwJ7lfFOuA%3D%3D"); /*Service Key*/
	        urlBuilder.append("&" + URLEncoder.encode("ServiceKey","UTF-8") + "=" + URLEncoder.encode("izL1fDnr%2FEU05FhF29tUogaC84yzWMJ%2BWncvCYUTQ0PxLytYFXkCBc74cQbkkxscgyOLYoaRTVJ8bwJ7lfFOuA%3D%3D", "UTF-8")); /*공공데이터포털에서 발급받은 인증키*/
	        urlBuilder.append("&" + URLEncoder.encode("MobileOS","UTF-8") + "=" + URLEncoder.encode("ETC", "UTF-8")); /*IOS (아이폰), AND (안드로이드), WIN (원도우폰), ETC*/
	        urlBuilder.append("&" + URLEncoder.encode("MobileApp","UTF-8") + "=" + URLEncoder.encode("AppTest", "UTF-8")); /*서비스명=어플명*/
	        urlBuilder.append("&" + URLEncoder.encode("contentId","UTF-8") + "=" + URLEncoder.encode(dest_num, "UTF-8"));
	        urlBuilder.append("&" + URLEncoder.encode("defaultYN","UTF-8") + "=" + URLEncoder.encode("Y", "UTF-8"));
	        urlBuilder.append("&" + URLEncoder.encode("overviewYN","UTF-8") + "=" + URLEncoder.encode("Y", "UTF-8"));
	        urlBuilder.append("&" + URLEncoder.encode("firstImageYN","UTF-8") + "=" + URLEncoder.encode("Y", "UTF-8"));
	        urlBuilder.append("&" + URLEncoder.encode("addrinfoYN","UTF-8") + "=" + URLEncoder.encode("Y", "UTF-8"));
	        urlBuilder.append("&" + URLEncoder.encode("_type","UTF-8") + "=" + URLEncoder.encode("json", "UTF-8"));
	        URL url = new URL(urlBuilder.toString());
	        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
	        conn.setRequestMethod("GET");
	        conn.setRequestProperty("Content-type", "application/json");
	        System.out.println("Response code: " + conn.getResponseCode());
	        BufferedReader rd;
	        if(conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
	            rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
	        } else {
	            rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
	        }
	        StringBuilder sb = new StringBuilder();
	        String line;
	        while ((line = rd.readLine()) != null) {
	            sb.append(line);
	        }
	        rd.close();
	        conn.disconnect();
	        json = sb.toString();
	        System.out.println(json);
		} catch (IOException e) {
		}
		
		return json;
	}

	@Transactional(isolation = Isolation.READ_COMMITTED)
	public int getBhit(String dest_num) {
		dao.upHit(dest_num);
		return dao.getBhit(dest_num);
	}


	public double getRating(String dest_num) {
		ArrayList<Integer> list = dao.getRating(dest_num);
		logger.info("평점 : "+ list);
		logger.info("평점 크기 : "+ list.size());
		double rating = 0;
		if(!list.isEmpty()) {
			double sum = 0;
			for (int rat : list) {
				sum += rat;
			}
			double dou = sum/(double)list.size();
			rating = Math.round(dou*10)/10.0;
		}
		
		return rating;
	}


	public ModelAndView reco(String who, String what, String where) {
		ModelAndView mav = new ModelAndView();
		ArrayList<SearchDTO> list = new ArrayList<SearchDTO>();
		
		String msg = "당신을 위한 여행지 추천";
		if(what.equals("leports")) {
			list = dao.leportsReco(who, where);
		}else if (what.equals("culture")) {
			list = dao.cultureReco(who, where);
		}else if(what.equals("tour")) {
			list = dao.tourReco(who, where);
		}else {
			list = dao.healingReco(who, where);
		}
		
		if(list.isEmpty()) {
			msg="이런! 마땅한 여행지가 없어요! "+where+"의 다른 여행지는 어떠신가요?";
			list = dao.noResultReco(where);
		}
		
		mav.addObject("list", list);
		mav.addObject("msg", msg);
		mav.setViewName("recoResult");
		
		return mav;
	}


}
