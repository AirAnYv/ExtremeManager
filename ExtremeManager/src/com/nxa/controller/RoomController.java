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
		
		// 如果是重定向到任意（包括当前的控制器）的请求，则
		// 写成return “redirect:地址；他就跳到控制器”
		// 页不是指定的jsp页了
		List<Room> rooms =roomService.queryAll();
		model.addAttribute("rooms", rooms);
		return "roommanager";
	}
	
	
}
