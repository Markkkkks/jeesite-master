package com.thinkgem.jeesite.modules.sys.dao;

import java.util.Date;
import java.util.List;

import com.thinkgem.jeesite.common.persistence.annotation.MyBatisDao;
import com.thinkgem.jeesite.modules.sys.entity.Cal;


/**
 * 计算器数据DAO接口
 * @author ThinkGem
 * @version 2014-05-16
 */
@MyBatisDao
public interface CalDao {
	//根据用户id找到所有的计算数据
	public List<Cal> findCalByUserId(String userId);
	
	//插入计算数据
	public int insertCal(Cal cal);
	
//	删除某项数据
	public boolean deleteCalbyId(String id);
	
}
