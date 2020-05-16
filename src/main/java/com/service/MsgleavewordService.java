package com.service;

import com.entity.Msgleaveword;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("msgleavewordService")
public interface MsgleavewordService {
	/**
	 * 增加留言回复
	 */
	public int addMsgleaveword(Msgleaveword msgleaveword);

	/**
	 * 更新留言回复
	 */
	public int updateMsgleaveword(Msgleaveword msgleaveword);

	/**
	 * 删除留言回复
	 */
	public int deleteMsgleaveword(Msgleaveword msgleaveword);

	/**
	 * 查询所有留言回复
	 */
	public List<Msgleaveword> findAllMsgleaveword();

	/**
	 * 按条件精确查找留言回复
	 * @param msgleaveword
	 * @return
	 */
	public List<Msgleaveword> findMsgleavewordByCondition(Msgleaveword msgleaveword);
}
