package com.service;

import com.entity.User;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("userService")
public interface UserService {
	/**
	 *增加用户
	 */
	public int addUser(User user);

	/**
	 *更新用户信息
	 */
	public int updateUserInfo(User user);

	/**
	 *删除用户
	 */
	public int deleteUser(User user);

	/**
	 * 查询所有用户
	 */
	public List<User> findAllUsers();

	/**
	 * 按条件精确查找用户
	 */
	public List<User> findUserByCondition(User user);

	/**
	 * 模糊查询
	 * @param user
	 * @return
	 */
	public List<User> findUsersByLike(User user);
}
