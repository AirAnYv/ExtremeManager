package com.nxa.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.nxa.bean.Room;
import com.nxa.mapper.RoomMapper;
import com.nxa.service.RoomService;

@Service
public class RoomServiceImpl implements RoomService{
	
	@Autowired
	private RoomMapper roomMapper;

	public void addRoom(Room room) {
		roomMapper.addRoom(room);
	}

	public void modifyRoom(Room room) {
		roomMapper.modifyRoom(room);
	}

	public void removeRoom(Integer roomNo) {
		roomMapper.removeRoom(roomNo);
	}

	public double getRoomPrice(Integer roomNo) {
		return roomMapper.getRoomPrice(roomNo);
	}
	
	public List<Room> queryAll(){
		return roomMapper.queryAll();
	}

}
