package com.nxa.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.nxa.bean.Room;
import com.nxa.service.RoomService;



@Controller
public class RoomController {
	@Autowired
	private RoomService roomService;
	
	@RequestMapping("/roommanager")
	public String query(Model model) {
		
		// ������ض������⣨������ǰ�Ŀ���������������
		// д��return ��redirect:��ַ������������������
		// ҳ����ָ����jspҳ��
		List<Room> rooms =roomService.queryAll();
		model.addAttribute("rooms", rooms);
		return "roommanager";
	}
	
	
}
