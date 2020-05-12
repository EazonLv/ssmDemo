package com.controller;

import com.entity.User;
import com.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;


@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	UserService userService;


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

	/**
	 * 增加用户
	 * @param user
	 * @return
	 */
	@RequestMapping("/addUser")
	public String addUser(User user){
//		System.out.println("已增加新用户");
		ServletRequestAttributes attrs = (ServletRequestAttributes) RequestContextHolder.getRequestAttributes();
		String password = attrs.getRequest().getParameter("password");
		String username = attrs.getRequest().getParameter("username");
		user.setUsername(username);
		user.setPassword(password);
		userService.addUser(user);
		return "respond/success";
	}

	/**
	 * 查找所有用户
	 * @param model
	 * @return
	 */
	@RequestMapping("/findAllUsers")
	public String findAllUsers(Model model){
		List<User> userList = userService.findAllUsers();
		for (User user:userList){
			System.out.println(user);
		}
		model.addAttribute("list",userList);
		return "allUsers";
	}
	@RequestMapping("/login")
	public String userLogin(Model model){
		String username = this.getRequest().getParameter("username");
		String password = this.getRequest().getParameter("password");
		User u = new User();
		u.setUsername(username);
		List<User> usersList = this.userService.findUserByCondition(u);
		if (usersList.size() == 0) {
			this.getSession().setAttribute("message", "用户名不存在");
			return "respond/message";
		} else {
			User user = usersList.get(0);
			if (password.equals(user.getPassword())) {
				this.getSession().setAttribute("userid", user.getUserid());
				this.getSession().setAttribute("username", user.getUsername());
				this.getSession().setAttribute("user", user);
				return "loginIndex";
			} else {
				this.getSession().setAttribute("message", "密码错误");
				return "respond/message";
			}
		}
	}
}
