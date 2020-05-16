package com.controller;

import com.entity.Message;
import com.service.MessageService;
import com.util.VeDate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/message")
public class MessageController extends BaseController{
	@Resource
	private MessageService messageService;
	//添加留言
	@RequestMapping("/addMessage")
	public String addMessage(Message message){
		//验证登录
		if (this.getSession().getAttribute("userid") == null){
			this.getSession().setAttribute("message","请先登录");
			return "response/returnToLogin";
		}

		String userid = (String) this.getSession().getAttribute("userid");
		String username =(String) this.getSession().getAttribute("username");
		message.setUserid(userid);
		message.setUsername(username);
		message.setMessagetime(VeDate.getStringDateShort());
		if(messageService.addMessage(message)==1){
			System.out.println("添加留言成功");
			this.getSession().setAttribute("message","添加留言成功");
		}
		return ("response/message");

	}

	//展示所有留言
	@RequestMapping("/showAllMessages")
	public String showAllMessages(Model model){
		List<Message> messageList = messageService.findAllMessage();
		model.addAttribute("messageList",messageList);
		return "message";
	}
}
