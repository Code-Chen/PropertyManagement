package com.property.dao;

import org.apache.ibatis.annotations.Param;

import com.property.bean.Admin;

public interface AdminDao {
	Admin selectByLoginNameAndPassword(@Param("loginName")String loginName,@Param("password") String password);

}
