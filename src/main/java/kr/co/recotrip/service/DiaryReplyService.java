package kr.co.recotrip.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.recotrip.dao.DiaryReplyDAO;


@Service
public class DiaryReplyService {

	private Logger logger = LoggerFactory.getLogger(this.getClass());
	@Autowired DiaryReplyDAO dao;
	
	
}
