package com.property.dao;

import java.util.List;


import org.springframework.web.bind.annotation.RequestParam;

import com.property.bean.Publish;

public interface PublishDao {
	List<Publish> selectAllPublish();
	Publish selectPublishById(@RequestParam Integer id);
	List<Publish> showList(Integer index);//分页显示数据
	int pageCount();
}
