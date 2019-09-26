package com.nxa.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;

import com.nxa.bean.UserInfo;
import com.nxa.service.UserInfoService;
import com.nxa.tool.UtilTool;



@Controller
public class UserInfoController {

	@Autowired
	private UserInfoService uiService;
	
	@RequestMapping("/register")
	public String register(UserInfo ui){
		String realname = UtilTool.getGBK(ui.getUiRealname());
		ui.setUiRealname(realname);
		uiService.register(ui);
		return "index";
	}
	
	@RequestMapping("/login")
	public String login(UserInfo ui){
		if(uiService.login(ui)!=1){
			//没有账户 登录不上
			return "index";
		}else{
			//登录成功
			return "menu";
		}
	}
	
	@RequestMapping("/queryAllStaff")
	public String queryAllStaff(Model model){
		List<UserInfo> userinfo = uiService.queryAll();
		model.addAttribute("allStaff", userinfo);
		return "staffmanager";
	}
	
}
