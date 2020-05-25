package com.controller;

import com.entity.Message;
import com.entity.Msgleaveword;
import com.service.MessageService;
import com.service.MsgleavewordService;
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

	@Resource
	private MsgleavewordService msgleavewordService;

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
		List<Object> objects = reverseList(messageList);
		model.addAttribute("messageList",objects);
		return "message";
	}

	@RequestMapping("/showUserMessage")
	public String showUserMessage(Message message,Model model){
		//验证登录
		if (this.getSession().getAttribute("userid") == null){
			this.getSession().setAttribute("message","请先登录");
			return "response/returnToLogin";
		}


		String userid = (String) this.getSession().getAttribute("userid");
		message.setUserid(userid);
		message.setMessageid("");
		List<Message> messages= messageService.findMessageByCondition(message);
		List<Object> objects = reverseList(messages);
		if (messages!=null){
			model.addAttribute("messages",objects);
		}
		return "userMessage";
	}

	@RequestMapping("deleteMessage")
	public String deleteMessage(Message message){
		//验证登录
		if (this.getSession().getAttribute("userid") == null){
			this.getSession().setAttribute("message","请先登录");
			return "response/returnToLogin";
		}

		if(messageService.deleteMessage(message)==1){
			this.getSession().setAttribute("message","删除留言成功！");
		}else {
			this.getSession().setAttribute("message","删除留言失败！");
		}
		return "reponse/returnToUserMessage";
	}

	@RequestMapping("showUserMessageDetail")
	public String showUserMessageDetail(Message message,Model model){
		List<Message> messageList = messageService.findMessageByCondition(message);
		Message message1 = messageList.get(0);

		Msgleaveword msgleaveword = new Msgleaveword();
		msgleaveword.setMsgleavewordid("");
		msgleaveword.setMessageid(message1.getMessageid());
		List<Msgleaveword> msgleavewordList = msgleavewordService.findMsgleavewordByCondition(msgleaveword);

		model.addAttribute("msgleavewordList",msgleavewordList);
		model.addAttribute("message",message1);
		return "userMessageDetail";
	}

	@RequestMapping("showMessageDetail")
	public String showMessageDetail(Message message,Model model){
		List<Message> messageList = messageService.findMessageByCondition(message);
		Message message1 = messageList.get(0);

		Msgleaveword msgleaveword = new Msgleaveword();
		msgleaveword.setMsgleavewordid("");
		msgleaveword.setMessageid(message1.getMessageid());
		List<Msgleaveword> msgleavewordList = msgleavewordService.findMsgleavewordByCondition(msgleaveword);

		model.addAttribute("msgleavewordList",msgleavewordList);
		model.addAttribute("message",message1);
		return "messageDetail";
	}

}
