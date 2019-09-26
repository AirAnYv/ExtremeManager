package com.nxa.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.nxa.bean.Check;
import com.nxa.service.CheckService;
import com.nxa.service.RoomService;
import com.nxa.tool.UtilTool;
@Controller
public class CheckController {
	
	@Autowired
	private CheckService checkService;
	@Autowired
	private RoomService roomService;
	
	@RequestMapping("/checkin")
	public String addCheckIn(Check ci){
		String Name = UtilTool.getGBK(ci.getName());
		String oiName = UtilTool.getGBK(ci.getOiName());
		String ciMark = UtilTool.getGBK(ci.getCiMark());
		ci.setName(Name);
		ci.setOiName(oiName);
		ci.setCiMark(ciMark);
		checkService.addCheckIn(ci);
		return "menu";
	}
	
	@RequestMapping("/checkout")
	public String modifyCheck(Check ci){
		checkService.CheckOut(ci);
		return "menu";
	}
	
	@RequestMapping("/querycino")
	public String queryciNo(Integer ciNo,Model model){
		Check check = checkService.querycino(ciNo);
		long day = UtilTool.getDate(check.getCiDateTime())+1;
		//这里写每日多少钱
		double money = roomService.getRoomPrice(check.getRoomNo())*day;
		model.addAttribute("querycino",check);
		model.addAttribute("money",money);
		model.addAttribute("day",day);
		return "checkout";
	}
	
	

}
