package com.property.service.interfaces;

import com.property.bean.Block;

public interface IBlockSV {
	//查找小区负责人的信息，并选择姓名，联系方式，地址显示在首页底部
	public Block selectBlockManager();

}
