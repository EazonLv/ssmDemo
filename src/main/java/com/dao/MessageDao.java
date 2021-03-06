package com.dao;

import com.entity.Message;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("messageDao")
public interface MessageDao {
	/**
	 * 增加留言
	 */
	public int addMessage(Message message);

	/**
	 * 更新留言
	 */
	public int updateMessage(Message message);

	/**
	 * 删除留言
	 */
	public int deleteMessage(Message message);

	/**
	 * 查询所有留言
	 */
	public List<Message> findAllMessage();

	/**
	 * 按条件精确查找留言
	 * @param message
	 * @return
	 */
	public List<Message> findMessageByCondition(Message message);

}
