package com.nxa.mapper;

import java.util.List;

import com.nxa.bean.UserInfo;

public interface UserInfoMapper {
	//ע���û��ķ���
	public void register(UserInfo ui);
	//�޸��û���Ϣ�ķ���
	public void modify(UserInfo ui);
	public void remove(Integer uiID);//�����û���ɾ��
	public int login(UserInfo ui);
	public List<UserInfo> queryAll();
	
	
	
}
