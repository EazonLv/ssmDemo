package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/index")
public class IndexController extends BaseController{
	@RequestMapping("/addUser")
	public String indexToAddUser(){
		//验证登录
		if (this.getSession().getAttribute("userid") == null){ return "reLogin"; }
		return "addUser";
	}
	@RequestMapping("/test")
	public String test(){
		return "userLogin";
	}
}
