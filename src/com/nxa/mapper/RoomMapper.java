package com.nxa.mapper;

import java.util.List;

import com.nxa.bean.Room;

public interface RoomMapper {
	
	public void addRoom(Room room);
	public void modifyRoom(Room room);
	public void removeRoom(Integer roomNo);
	public double getRoomPrice(Integer roomNo);
	
	public List<Room> queryAll();
}
