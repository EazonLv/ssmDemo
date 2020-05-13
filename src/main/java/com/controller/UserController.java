package com.controller;

import com.entity.User;
import com.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.annotation.Resource;
import java.util.List;


@Controller
@RequestMapping("/user")
public class UserController extends BaseController{
	@Resource
	private UserService userService;

	//添加用户
	@RequestMapping("/addUser")
	public String addUser(User user){
//		System.out.println("已增加新用户");
		//验证登录
		if (this.getSession().getAttribute("userid") == null){ return "reLogin"; }

		String password = this.getRequest().getParameter("password");
		String username = this.getRequest().getParameter("username");

		User u = new User();
		u.setUsername(username);
		List<User> usersList = this.userService.findUserByCondition(u);
		if(usersList.size() != 0){
			this.getSession().setAttribute("message", "用户名已存在");
			return "response/message";
		}else{
			user.setUsername(username);
			user.setPassword(password);
			userService.addUser(user);
			return "response/message";
		}

	}

	//查找所有用户
	@RequestMapping("/findAllUsers")
	public String findAllUsers(Model model){
		//验证登录
		if (this.getSession().getAttribute("userid") == null){ return "reLogin"; }

		List<User> userList = userService.findAllUsers();
		for (User user:userList){
			System.out.println(user);
		}
		model.addAttribute("list",userList);
		return "allUsers";
	}

	//退出登录
	@RequestMapping("/logout")
	public String userLogout(){
		this.getSession().removeAttribute("userid");
		this.getSession().removeAttribute("username");
		this.getSession().removeAttribute("users");
		this.getSession().setAttribute("message", "已退出");
		return "response/message";
	}

	//登录
	@RequestMapping("/login")
	public String userLogin(){
		String username = this.getRequest().getParameter("username");
		String password = this.getRequest().getParameter("password");
		User u = new User();
		u.setUsername(username);
		List<User> usersList = this.userService.findUserByCondition(u);
		if (usersList.size() == 0) {
			this.getSession().setAttribute("message", "用户名不存在");
			return "response/message";
		} else {
			User user = usersList.get(0);
			if (password.equals(user.getPassword())) {
				this.getSession().setAttribute("userid", user.getUserid());
				this.getSession().setAttribute("username", user.getUsername());
				this.getSession().setAttribute("user", user);
				return "loginIndex";
			} else {
				this.getSession().setAttribute("message", "密码错误");
				return "response/message";
			}
		}
	}

}
