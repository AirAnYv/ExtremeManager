package com.nxa.service;

import java.util.List;

import com.nxa.bean.Room;

public interface RoomService {

	public void addRoom(Room room);
	public void modifyRoom(Room room);
	public void removeRoom(Integer roomNo);
	
	public double getRoomPrice(Integer roomNo);
	
	public List<Room> queryAll();
}
