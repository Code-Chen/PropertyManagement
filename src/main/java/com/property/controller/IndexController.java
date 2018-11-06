package com.property.controller;

import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.property.bean.Block;
import com.property.bean.Owner;
import com.property.bean.Publish;
import com.property.service.impl.BlockSVImpl;
import com.property.service.impl.OwnerSVImpl;
import com.property.service.impl.PublishSVImpl;
import com.property.util.PageUtil;

@Controller
@RequestMapping("/")
public class IndexController {

	@Autowired
	private OwnerSVImpl OwnerSVImpl;

	@Autowired
	private BlockSVImpl blocksVImpl;
	private Block block;
	private Owner owner;

	@Autowired
	private PublishSVImpl publishSVImpl;
	private ArrayList<Publish> publishList;
	private ArrayList<Publish> indexShowPublishList;
	private Publish publish;

	// 业主登录方法
	@RequestMapping(value = "/ownerLogin", method = RequestMethod.POST)
	public String login(@RequestParam("loginName") String loginName, @RequestParam("password") String password,
			HttpSession session) {
		if (OwnerSVImpl.login(loginName, password)) {
			owner = OwnerSVImpl.selectOwnerInfo(loginName, password);
			session.setAttribute("owner", owner);
			return "userAdmin/index";
		} else {
			return "showJSP/index";
		}
	}

	// 通过点击首页的超链接跳转回首页
	@RequestMapping("/index")
	public String forwardIndex(Map<String, Object> requestMap) {

		publishList = (ArrayList<Publish>) publishSVImpl.selectAllPublish();
		indexShowPublishList = new ArrayList<>();

		int publishSize = publishList.size();// 一共取出了多少条公告
		int indexShowMax = 5;// 首页所能显示的公告的最大值

		// 如果所取出的公告数量不超过首页所能显示的最大值则把所有的公告全部显示在首页上，否则就只显示前五条公告
		if (publishSize <= indexShowMax && publishSize != 0) {
			indexShowPublishList.addAll(publishList);
		} else if (publishSize > indexShowMax) {
			for (int i = 0; i < indexShowMax; ++i) {
				indexShowPublishList.add(publishList.get(i));
			}
		}
		block = blocksVImpl.selectBlockManager();
		requestMap.put("block", block);
		requestMap.put("indexShowPublishList", indexShowPublishList);
		return "showJSP/index";
	}

	// 通过点击首页的超链接跳转到物业公告页
	@RequestMapping("/list")
	public String forwardList(Map<String, Object> requestMap, @RequestParam Integer pageIndex) {
		int pageSize = 9;// 每页显示的数据数量
		PageUtil<Publish> pageUtil = new PageUtil<>();
		publishList = new ArrayList<Publish>();
		// 对页面上的分页标签传的值,进行获取,也是就点击'上一页或者下一页'传过来的pageindex
		pageUtil.setPageIndex(pageIndex);// 保存至工具类
		int number = publishSVImpl.pageCount();// 调用service层方法计算出总数据量，就是多少条数据.
		pageUtil.setPageNumber(number);// 保存至工具类
		pageUtil.setPageSize(pageSize);// 保存至工具类
		pageUtil.setPageCount((int) Math.ceil((double) (pageUtil.getPageNumber() / pageUtil.getPageSize())) + 1);// 计算出总页数,并封装到工具类
		int index = (pageIndex - 1) * pageSize;// 计算出每一页从数据库中第几条数据开始取值，也就是limit后面的第一个数字
		publishList = (ArrayList<Publish>) publishSVImpl.showList(index);// 调用service层的方法，取得数据库中的值
		pageUtil.setList(publishList);// 保存到工具类中的集合
		block = blocksVImpl.selectBlockManager();
		requestMap.put("block", block);
		requestMap.put("pageUtil", pageUtil);
		return "showJSP/list";
	}

	// 通过点击首页的超链接跳转到小区设施页
	@RequestMapping("/assist")
	public String forwardAssist(Map<String, Object> requestMap) {
		block = blocksVImpl.selectBlockManager();
		requestMap.put("block", block);
		return "showJSP/assist";
	}

	// 通过点击首页的超链接跳转到物管人员页
	@RequestMapping("/manager")
	public String forwardManager(Map<String, Object> requestMap) {
		block = blocksVImpl.selectBlockManager();
		requestMap.put("block", block);
		return "showJSP/manager";
	}

	// 通过点击首页的超链接跳转到小区介绍页
	@RequestMapping("/introduce")
	public String forwardIntroduce(Map<String, Object> requestMap) {
		block = blocksVImpl.selectBlockManager();
		requestMap.put("block", block);
		return "showJSP/introduce";
	}

	// 通过点击首页的超链接跳转到关于我们页
	@RequestMapping("/about")
	public String forwardAbout(Map<String, Object> requestMap) {
		block = blocksVImpl.selectBlockManager();
		requestMap.put("block", block);
		return "showJSP/about";
	}

	// 通过点击首页的超链接跳转到小区公告页
	@RequestMapping(value = "/book", method = RequestMethod.GET)
	public String forwardBook(Map<String, Object> requestMap, @RequestParam Integer id) {
		block = blocksVImpl.selectBlockManager();
		publish = publishSVImpl.selectPublishById(id);
		requestMap.put("publish", publish);
		requestMap.put("block", block);
		return "showJSP/book";
	}

}
