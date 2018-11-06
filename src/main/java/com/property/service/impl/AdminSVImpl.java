package com.property.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.property.bean.Admin;
import com.property.bean.CodeManage;
import com.property.dao.AdminDao;
import com.property.dao.CodeManageDao;
import com.property.service.interfaces.IAdminSV;

@Service
public class AdminSVImpl implements IAdminSV {

	@Autowired
	private AdminDao adminDao;
	private Admin admin;
	@Autowired
	private CodeManageDao codeManageDao;
	private List<CodeManage> codeList;

	@Override
	public boolean login(String longName, String password) {
		// TODO Auto-generated method stub
		admin = adminDao.selectByLoginNameAndPassword(longName, password);
		if (admin != null) {
			return true;
		} else {
			return false;
		}
	}

	@Override
	public List<CodeManage> selectAllCode() {
		// TODO Auto-generated method stub
		codeList = codeManageDao.selectAllCode();
		return codeList;
	}

}
