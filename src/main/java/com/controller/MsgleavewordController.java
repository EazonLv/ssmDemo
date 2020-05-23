package com.controller;

import com.entity.Message;
import com.entity.Msgleaveword;
import com.service.MessageService;
import com.service.MsgleavewordService;
import com.util.VeDate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.annotation.Resource;

@Controller
@RequestMapping("msgleaveword")
public class MsgleavewordController extends BaseController{
	@Resource
	private MsgleavewordService msgleavewordService;
	@Resource
	private MessageService messageService;

	@RequestMapping("addMsgleaveword")
	public String addMsgleaveword(Msgleaveword msgleaveword, Model model){
		//验证登录
		if (this.getSession().getAttribute("userid") == null){
			this.getSession().setAttribute("message","请先登录");
			return "response/returnToLogin";
		}


		System.out.println(msgleaveword.getMessageid());
		msgleaveword.setMsgleavewordtime(VeDate.getStringDateShort());
		if(msgleavewordService.addMsgleaveword(msgleaveword)==1){
			this.getSession().setAttribute("message","回复成功");
			model.addAttribute("messageid",msgleaveword.getMessageid());
		}else{
			this.getSession().setAttribute("message","回复失败");
		}
		return "response/returnToMessageDetail";
	}

	@RequestMapping("deleteMsgleaveword")
	public String deleteMsgleaveword(Msgleaveword msgleaveword, Model model){
		//验证登录
		if (this.getSession().getAttribute("userid") == null){
			this.getSession().setAttribute("message","请先登录");
			return "response/returnToLogin";
		}

		if (msgleavewordService.deleteMsgleaveword(msgleaveword)==1){
			this.getSession().setAttribute("message","删除回复成功");
			model.addAttribute("messageid",msgleaveword.getMessageid());
		}else {
			this.getSession().setAttribute("message","删除回复失败");
		}

		return "response/returnToUserMessageDetail";
	}
}
