package kr.co.recotrip.service;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import kr.co.recotrip.dao.DiaryDAO;
import kr.co.recotrip.dto.DiaryDTO;

@Service
public class DiaryService {

	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Autowired DiaryDAO dao;

	@Value("#{config['Globals.root']}") String root;
	private String fullpath = null;
	
	public ModelAndView tdList() {
		
		ModelAndView mav =new ModelAndView();

		ArrayList<DiaryDTO> diaryList = dao.tdList();
		mav.addObject("diaryList",diaryList);
		logger.info("diaryList : {}",diaryList);
		
		
		
		return mav;
	}

	public ModelAndView tdDetail(String idx) {
		
		ModelAndView mav =new ModelAndView();

		DiaryDTO list = dao.tdDetail(idx);
		mav.addObject("list",list);
		
		logger.info("diaryList : {}",list);
		
		return mav;
	}

	public void tdWrite(HashMap<String, String> params) {
		int count = params.size();
		if(count == 6) {
			dao.tdWrite(params);
		}else if(count ==7) {
			dao.tdWrite2(params);
		}else if(count == 8) {
			dao.tdWrite3(params);
		}else if(count == 9) {
			dao.tdWrite4(params);
		}else if(count == 10) {
			dao.tdWrite5(params);
		}
		
		
		
	}

	public ModelAndView tdFileUpload(MultipartFile file, HttpSession session) {
		
		ModelAndView mav = new ModelAndView();
		
		fullpath = root+"/upload/";
		
		//파일명 추출
		String fileName = file.getOriginalFilename();
		logger.info("파일명?"+fileName);
		
		//새로운 파일명 만들기
		String newFileName = System.currentTimeMillis()+fileName.substring(fileName.lastIndexOf("."));
		logger.info("새파일명?"+newFileName);
		
		//파일명 바꾸기+저장하기(java.nio <- 자바 7부터 적용)
		try {
			byte[] bytes = file.getBytes();//바이너리 추출 
			Path path = Paths.get(fullpath+newFileName);//저장 경로를 지정 
			Files.write(path, bytes);//파일 저장
			//업로드 성공한 파일을 session에 저장			
			HashMap<String, String> fileList = (HashMap<String, String>) session.getAttribute("fileList");
			fileList.put(newFileName, fileName);
			logger.info("업로드한 파일 갯수 : {}",fileList.size());
			session.setAttribute("fileList", fileList);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		mav.addObject("path","photo/"+newFileName);
		mav.setViewName("tdUploadForm");
		//mav.setViewName("tdWriteForm");
		
		return mav;
	}

	public HashMap<String, Object> tdFileDelete(String fileName, HttpSession session) {
		HashMap<String, Object> result = new HashMap<String, Object>();
		int success = 0;
		
		//1. session에서 fileList가져오기
		HashMap<String, String> fileList = (HashMap<String, String>) session.getAttribute("fileList");
		
		//2. 실제 파일 삭제하기
		String delFileName = root+"/upload/"+fileName;
		logger.info("지울 파일 경로 : {}",delFileName);
		File file = new File(delFileName);
		if(file.exists()) {//파일이 존재할 경우
			if(file.delete()) {//삭제 처리 후 성공하면
				success = 1;//1로 변경
			}
		}else {
			logger.info("이미 삭제된 상황");
			success = 1;
		}
		//3. fileList에서 삭제한 파일명 지우기
		if(fileList.get(fileName) != null) {//파일명이 리스트에 존재하면
			fileList.remove(fileName);//지운다.
			logger.info("삭제 후 남은 파일 갯수 : "+fileList.size());
		}
		
		//4. session에 fileList넣기
		session.setAttribute("fileList", fileList);
		
		//5. 성공 여부 변경하기
		
		
		result.put("success", success);
		
		return result;
	}

}
