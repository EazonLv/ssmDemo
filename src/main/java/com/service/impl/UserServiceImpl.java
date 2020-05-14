package com.service.impl;

import com.dao.UserDao;
import com.entity.User;
import com.service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("userService")
public class UserServiceImpl implements UserService {
	@Resource
	private UserDao userDao;

	@Override
	public int addUser(User user) { return userDao.addUser(user); }

	@Override
	public int updateUserInfo(User user) {
		return userDao.updateUserInfo(user);
	}

	@Override
	public int deleteUser(User user) {
		return userDao.deleteUser(user);
	}

	@Override
	public List<User> findAllUsers() {
		return userDao.findAllUsers();
	}

	@Override
	public List<User> findUserByCondition(User user) { return userDao.findUserByCondition(user);}
}
