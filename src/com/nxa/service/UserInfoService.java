package com.nxa.service;

import java.util.List;

import com.nxa.bean.UserInfo;

public interface UserInfoService {
	public void register(UserInfo ui); 
	public void modify(UserInfo ui);
	public void remove(Integer uiID);
	public int login(UserInfo ui);
	public List<UserInfo> queryAll();

}
