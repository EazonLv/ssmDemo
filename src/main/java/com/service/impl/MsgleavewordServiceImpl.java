package com.service.impl;

import com.dao.MsgleavewordDao;
import com.entity.Msgleaveword;
import com.service.MsgleavewordService;

import javax.annotation.Resource;
import java.util.List;

public class MsgleavewordServiceImpl implements MsgleavewordService {
	@Resource
	private MsgleavewordDao msgleavewordDao;

	@Override
	public int addMsgleaveword(Msgleaveword msgleaveword) {
		return msgleavewordDao.addMsgleaveword(msgleaveword);
	}

	@Override
	public int updateMsgleaveword(Msgleaveword msgleaveword) {
		return msgleavewordDao.updateMsgleaveword(msgleaveword);
	}

	@Override
	public int deleteMsgleaveword(Msgleaveword msgleaveword) {
		return msgleavewordDao.deleteMsgleaveword(msgleaveword);
	}

	@Override
	public List<Msgleaveword> findAllMsgleaveword() {
		return msgleavewordDao.findAllMsgleaveword();
	}

	@Override
	public List<Msgleaveword> findMsgleavewordByCondition(Msgleaveword msgleaveword) {
		return msgleavewordDao.findMsgleavewordByCondition(msgleaveword);
	}
}
