package com.property.dao;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.property.BaseTest;
import com.property.bean.Admin;

public class AdminDaoTest extends BaseTest{
	@Autowired
	private AdminDao adminDao;
	@Test
	public void testLogin() {
		try {
			String loginName = "admin";
			String password = "123456";
			Admin admin = adminDao.selectByLoginNameAndPassword(loginName, password);
			System.out.println(admin);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

}
