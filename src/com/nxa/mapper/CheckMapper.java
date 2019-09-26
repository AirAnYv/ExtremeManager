package com.nxa.mapper;

import com.nxa.bean.Check;

public interface CheckMapper {
	
	public void addCheckIn(Check check);
	public void CheckOut(Check check);
	public void removeCheck(Integer roomNo);
	
	public Check queryciNo(Integer ciNo);
	

}
