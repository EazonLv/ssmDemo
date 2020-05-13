package com.service.impl;

import com.dao.UserDao;
import com.entity.User;
import com.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("userService")
public class UserServiceImpl implements UserService {
	@Resource
	private UserDao userDao;

	/**
	 * 添加用户
	 * @param user
	 * @return 成功返回1，失败返回0
	 */
	@Override
	public int addUser(User user) { return userDao.addUser(user); }

	@Override
	public int updateUserInfo(User user) {
		return 0;
	}

	@Override
	public int deleteUser(User user) {
		return 0;
	}

	@Override
	public List<User> findAllUsers() {
		return userDao.findAllUsers();
	}

	@Override
	public List<User> findUserByCondition(User user) { return userDao.findUserByCondition(user);}
}
