package com.property.controller;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.method.annotation.ResponseBodyEmitterReturnValueHandler;

import com.property.bean.Owner;
import com.property.service.impl.OwnerSVImpl;

@Controller
@RequestMapping("/")
public class OwnerController {

	@Autowired
	private OwnerSVImpl OwnerSVImpl;
	private Owner owner;

	// 通过点击首页的超链接显示户主信息页
	@RequestMapping("/info")
	public String forwardInfo() {
		return "userAdmin/info";
	}

	// 通过点击首页的超链接显示修改户主登录账号页
	@RequestMapping("/username")
	public String forwardUserName() {
		return "userAdmin/username";
	}

	// 通过点击首页的超链接显示户主修改密码页
	@RequestMapping("/pass")
	public String forwardPass() {
		return "userAdmin/pass";
	}

	// 通过点击首页退出按钮返回到登录界面
	@RequestMapping("/exit")
	public String forwardLogin(HttpSession session) {
		session.removeAttribute("owner");
		return "userAdmin/login";
	}

	// 通过点击修改按钮跳转到修改信息界面
	@RequestMapping("/info_update")
	public String forwardInfoUpdate() {
		return "userAdmin/info_update";
	}

	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String uodateOwnerInfo(@Param("ownerId") Integer ownerId, @Param("ownerTel") String ownerTel,
			@Param("ownerAddress") String ownerAddress, @Param("ownerEmail") String ownerEmail,
			@Param("ownerWorkAddress") String ownerWorkAddress, @Param("ownerPhone") String ownerPhone,
			HttpSession session) {
		if (OwnerSVImpl.updateOwnerInfo(ownerId, ownerTel, ownerAddress, ownerEmail, ownerWorkAddress,
				ownerPhone) == 1) {
			// 更新信息之后，重新查询保证显示信息页面的信息实时更新
			owner = OwnerSVImpl.selectById(ownerId);
			session.setAttribute("owner", owner);
			return "userAdmin/info";
		} else {
			return "userAdmin/info_update";
		}
	}

	@RequestMapping(value = "/updateLoginName", method = RequestMethod.POST)
	public String updateLoginName(@Param("ownerId") Integer ownerId, @Param("newLonginName") String newLonginName) {
		if (OwnerSVImpl.updateLoginNameById(ownerId, newLonginName) == 1) {
			return "userAdmin/login";
		} else {
			return "userAdmin/username";
		}

	}

	@RequestMapping(value = "/updatePassWord", method = RequestMethod.POST)
	public String updatePassWord(@Param("ownerId") Integer ownerId, @Param("oldPassWord") String oldPassWord,
			@Param("confirmPassWord") String confirmPassWord) {
		if (OwnerSVImpl.updatePassWord(ownerId, oldPassWord, confirmPassWord) == 1) {
			return "userAdmin/login";
		} else {
			return "userAdmin/pass";
		}
	}

}
