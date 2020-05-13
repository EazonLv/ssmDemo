package com.controller;

import com.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class BaseController {

	/**
	 * 公用方法：获取Request
	 * @return
	 */
	public HttpServletRequest getRequest() {
		ServletRequestAttributes attrs = (ServletRequestAttributes) RequestContextHolder
				.getRequestAttributes();
		return attrs.getRequest();
	}

	/**
	 * 公用方法：获取Session
	 * @return
	 */
	public HttpSession getSession() {
		HttpSession session = null;
		session = this.getRequest().getSession();
		return session;
	}
}
