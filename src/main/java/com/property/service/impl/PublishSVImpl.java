package com.property.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.property.bean.Publish;
import com.property.dao.PublishDao;
import com.property.service.interfaces.IPublishSV;

@Service
public class PublishSVImpl implements IPublishSV{
	@Autowired
	private PublishDao publishDao;
	private List<Publish> publishList;
	private Publish publish;
	private int pagecount;

	@Override
	public List<Publish> selectAllPublish() {
		// TODO Auto-generated method stub
		publishList = publishDao.selectAllPublish();
		if(publishList.size() != 0 && publishList != null) {
		return publishList;
	}else {
		return null;
				}
	}

	@Override
	public Publish selectPublishById(Integer id) {
		// TODO Auto-generated method stub
		publish = publishDao.selectPublishById(id);
		return publish;
	}

	@Override
	public List<Publish> showList(Integer index) {
		// TODO Auto-generated method stub
		publishList = publishDao.showList(index);
		return publishList;
	}

	@Override
	public int pageCount() {
		// TODO Auto-generated method stub
		pagecount = publishDao.pageCount();
		return pagecount;
	}
}
