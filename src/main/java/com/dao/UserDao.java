package com.dao;

import com.entity.User;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("userDao")
public interface UserDao {

	/**
	 *增加用户
	 */
//	@Insert("insert into t_users(userid, username, password) values(#{userid}, #{username}, #{password})")
	public int addUser(User user);

	/**
	 *更新用户信息
	 */
//	@Update("update t_users set username = #{username}, password = #{password} where userid = #{userid}")
	public int updateUserInfo(User user);

	/**
	 *删除用户
	 */
//	@Delete("delete from t_users where userid = #{userid}")
	public int deleteUser(User user);

	/**
	 * 查询所有用户
	 */
//	@Select("select * from t_users")
	public List<User> findAllUsers();

	/**
	 * 按条件精确查找用户
	 * @param user
	 * @return
	 */
	public List<User> findUserByCondition(User user);




}
