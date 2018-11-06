package com.property.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.property.bean.Owner;
import com.property.dao.OwnerDao;
import com.property.service.interfaces.IOwnerSV;

@Service
public class OwnerSVImpl implements IOwnerSV {

	@Autowired
	private OwnerDao ownerDao;
	private Owner owner;

	@Override
	public boolean login(String longName, String password) {
		// TODO Auto-generated method stub
		owner = ownerDao.selectByLoginNameAndPassword(longName, password);
		if (owner != null) {
			return true;
		} else {
			return false;
		}
	}

	@Override
	public Owner selectOwnerInfo(String longName, String password) {
		// TODO Auto-generated method stub
		owner = ownerDao.selectOwnerInfo(longName, password);
		return owner;
	}

	@Override
	public int updateOwnerInfo(Integer ownerId, String ownerTel, String ownerAddress, String ownerEmail,
			String ownerWorkAddress, String ownerPhone) {
		// TODO Auto-generated method stub
		int updateNum = ownerDao.updateOwnerInfoById(ownerId, ownerTel, ownerAddress, ownerEmail, ownerWorkAddress,
				ownerPhone);
		return updateNum;
	}

	@Override
	public Owner selectById(Integer ownerId) {
		// TODO Auto-generated method stub
		owner = ownerDao.selectById(ownerId);
		return owner;
	}

	@Override
	public int updateLoginNameById(Integer ownerId, String newLoginName) {
		// TODO Auto-generated method stub

		int updateLoginNameNum = ownerDao.updateLoginNameById(ownerId, newLoginName);

		return updateLoginNameNum;
	}

	@Override
	public int updatePassWord(Integer ownerId, String oldPassWord, String confirmPassWord) {
		// TODO Auto-generated method stub
		int updtePassWordNum = ownerDao.updatePassWord(ownerId, oldPassWord, confirmPassWord);
		return updtePassWordNum;
	}

}
