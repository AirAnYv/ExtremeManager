package com.nxa.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nxa.bean.UserInfo;
import com.nxa.mapper.UserInfoMapper;
import com.nxa.service.UserInfoService;
@Service
public class UserInfoServiceImpl implements UserInfoService{
	@Autowired
	private UserInfoMapper uiMapper;
	
	public void register(UserInfo ui) {
		uiMapper.register(ui);
	}

	public void modify(UserInfo ui) {
		uiMapper.modify(ui);
	}

	public void remove(Integer uiID) {
		uiMapper.remove(uiID);
	}

	public List<UserInfo> queryAll() {
		return uiMapper.queryAll();
	}
	
	public int login(UserInfo ui){
		return uiMapper.login(ui);
	}

}
