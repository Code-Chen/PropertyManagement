package com.property.dao;

import org.apache.ibatis.annotations.Param;

import com.property.bean.Owner;

public interface OwnerDao {
	Owner selectByLoginNameAndPassword(@Param("loginName") String loginName, @Param("password") String password);

	Owner selectOwnerInfo(@Param("loginName") String loginName, @Param("password") String password);

	int updateOwnerInfoById(@Param("ownerId") Integer ownerId, @Param("ownerTel") String ownerTel,
			@Param("ownerAddress") String ownerAddress, @Param("ownerEmail") String ownerEmail,
			@Param("ownerWorkAddress") String ownerWorkAddress, @Param("ownerPhone") String ownerPhone);
	
	Owner selectById(Integer ownerId);
	
	int updateLoginNameById(@Param("ownerId") Integer ownerId, @Param("newLonginName") String newLonginName);
	int updatePassWord(@Param("ownerId") Integer ownerId, @Param("oldPassWord") String oldPassWord,@Param("confirmPassWord") String confirmPassWord);

}
