package com.property.service.interfaces;

import java.util.List;

import com.property.bean.CodeManage;

public interface IAdminSV {
	public boolean login(String longName,String password);
	public List<CodeManage> selectAllCode();

}
