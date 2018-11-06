package com.property.controller;

import java.util.ArrayList;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.property.bean.Block;
import com.property.bean.CodeManage;
import com.property.service.impl.AdminSVImpl;
import com.property.service.impl.BlockSVImpl;

@Controller
@RequestMapping("/")
public class AdminController {
	@Autowired
	private AdminSVImpl adminSVImpl;
	private ArrayList<CodeManage> codeList;

	@Autowired
	private BlockSVImpl blocksVImpl;
	private Block block;

	// 登录界面验证
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(@RequestParam("loginName") String loginName, @RequestParam("password") String password) {
		if (adminSVImpl.login(loginName, password)) {
			return "mainAdmin/index";
		} else {
			return "mainAdmin/login";
		}

	}

	@RequestMapping("/adminLogin")
	public String adminLogin() {
		return "mainAdmin/login";
	}

	// 通过点击管理员首页的链接跳转到信息页
	@RequestMapping("/admin_info")
	public String forwardInfo(Map<String, Object> requestMap) {
		block = blocksVImpl.selectBlockManager();
		requestMap.put("block", block);
		return "mainAdmin/info";
	}

	// 通过点击管理员首页的链接跳转到小区设施添加页
	@RequestMapping("/assist_add")
	public String forwardAssistAdd(Map<String, Object> requestMap) {
		codeList = (ArrayList<CodeManage>) adminSVImpl.selectAllCode();
		requestMap.put("codeList", codeList);
		return "mainAdmin/assist_add";
	}

	// 通过点击管理员首页的链接跳转到小区设施编辑页
	@RequestMapping("/assist_edit")
	public String forwardAssistEdit() {
		return "mainAdmin/assist_edit";
	}

	// 通过点击管理员首页的链接跳转到物业公告添加页
	@RequestMapping("/notice_add")
	public String forwardNoticeAdd() {
		return "mainAdmin/notice_add";
	}

	// 通过点击管理员首页的链接跳转到物业公告编辑页
	@RequestMapping("/notice_edit")
	public String forwardNoticeEdit() {
		return "mainAdmin/notice_edit";
	}
	

	// 通过点击管理员首页链接跳转到管理员首页
	@RequestMapping("/adminIndex")
	public String forwardIndex() {
		return "mainAdmin/index";
	}
	
	// 通过点击管理员首页链接退出登录，返回到登录页面
		@RequestMapping("/adminExit")
		public String forwardExit() {
			return "mainAdmin/login";
		}
}
