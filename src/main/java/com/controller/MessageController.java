package com.controller;

import com.entity.Message;
import com.service.MessageService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

@Controller
@RequestMapping("/message")
public class MessageController extends BaseController{
	@Resource
	private MessageService messageService;
	//添加留言
	@RequestMapping("addMessage")
	public String addMessage(Message message){
		//验证登录
		if (this.getSession().getAttribute("userid") == null){
			this.getSession().setAttribute("message","请先登录");
			return "response/returnToLogin";
		}

		String userid = (String) this.getSession().getAttribute("userid");
		message.setUserid(userid);
		if(messageService.addMessage(message)==1){
			System.out.println("添加留言成功");
			this.getSession().setAttribute("message","添加留言成功");
		}
		return ("response/message");

	}
}
