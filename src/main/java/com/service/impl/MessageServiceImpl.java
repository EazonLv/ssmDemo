package com.service.impl;

import com.dao.MessageDao;
import com.entity.Message;
import com.service.MessageService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
@Service("messageService")
public class MessageServiceImpl implements MessageService {
	@Resource
	private MessageDao messageDao;

	@Override
	public int addMessage(Message message) {
		return messageDao.addMessage(message);
	}

	@Override
	public int updateMessage(Message message) {
		return messageDao.updateMessage(message);
	}

	@Override
	public int deleteMessage(Message message) {
		return messageDao.deleteMessage(message);
	}

	@Override
	public List<Message> findAllMessage() {
		return messageDao.findAllMessage();
	}

	@Override
	public List<Message> findMessageByCondition(Message message) {
		return messageDao.findMessageByCondition(message);
	}
}
