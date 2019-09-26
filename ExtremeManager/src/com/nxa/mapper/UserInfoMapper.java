package com.nxa.mapper;

import java.util.List;

import com.nxa.bean.UserInfo;

public interface UserInfoMapper {
	//注册用户的方法
	public void register(UserInfo ui);
	//修改用户信息的方法
	public void modify(UserInfo ui);
	public void remove(Integer uiID);//根据用户号删除
	public int login(UserInfo ui);
	public List<UserInfo> queryAll();
	
	
	
}
