package com.nxa.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nxa.bean.Check;
import com.nxa.mapper.CheckMapper;
import com.nxa.service.CheckService;
@Service
public class CheckServiceImpl implements CheckService{
	@Autowired
	private CheckMapper checkMapper;
	
	public void addCheckIn(Check ci) {
		checkMapper.addCheckIn(ci);
	}

	public void CheckOut(Check ci) {
		checkMapper.CheckOut(ci);
	}

	public void removeCheckIn(Integer roomNo) {
		checkMapper.removeCheck(roomNo);
	}
	
	
	public Check querycino(Integer ciNo){
		return checkMapper.queryciNo(ciNo);
	}

	

}
