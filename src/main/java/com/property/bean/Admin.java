package com.property.bean;

public class Admin {
	private Integer adminId;
	private String name;
	private String loginName;
	private String password;
	
	public Integer getAdminId() {
		return adminId;
	}
	public void setAdminId(Integer adminId) {
		this.adminId = adminId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getLoginName() {
		return loginName;
	}
	public void setLoginName(String loginName) {
		this.loginName = loginName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

	
	@Override
	public String toString() {
		return "Admin [adminId=" + adminId + ", name=" + name + ", loginName=" + loginName + ", password=" + password
				+ "]";
	}
	
	
}
