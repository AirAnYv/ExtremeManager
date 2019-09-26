package com.nxa.service;

import com.nxa.bean.Check;

public interface CheckService {

	public void addCheckIn(Check ci);
	public void CheckOut(Check ci);
	public void removeCheckIn(Integer roomNo);
	
	public Check querycino(Integer ciNo);
}
