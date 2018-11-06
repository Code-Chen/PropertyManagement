package com.property.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.property.bean.Block;
import com.property.dao.BlockDao;
import com.property.service.interfaces.IBlockSV;

@Service
public class BlockSVImpl implements IBlockSV {
	@Autowired
	private BlockDao blockDao;
	private Block block;

	@Override
	public Block selectBlockManager() {
		block = blockDao.selectBlockManager();
		return block;
	}

}
