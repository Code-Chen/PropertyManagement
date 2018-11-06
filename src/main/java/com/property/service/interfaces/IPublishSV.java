package com.property.service.interfaces;

import java.util.List;

import com.property.bean.Publish;

public interface IPublishSV {
	public List<Publish> selectAllPublish();
	public Publish selectPublishById(Integer id);
	public List<Publish> showList(Integer index);
	public int pageCount();

}
