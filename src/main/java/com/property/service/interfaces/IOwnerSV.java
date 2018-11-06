package com.property.service.interfaces;

import com.property.bean.Owner;

public interface IOwnerSV {
	public boolean login(String longName,String password);
	
	public Owner selectOwnerInfo(String longName,String password);
	
	public int updateOwnerInfo(Integer ownerId, String ownerTel, String ownerAddress,String ownerEmail,String ownerWorkAddress,String ownerPhone);
	
	public Owner selectById(Integer ownerId);
	
	public int updateLoginNameById(Integer ownerId,String newLoginName);
	
	public int updatePassWord(Integer ownerId,String oldPassWord,String confirmPassWord);

}
