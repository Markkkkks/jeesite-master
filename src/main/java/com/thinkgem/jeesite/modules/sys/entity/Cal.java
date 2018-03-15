package com.thinkgem.jeesite.modules.sys.entity;

import java.util.Date;


/**
 * 计算器数据Entity
 * @author ThinkGem
 * @version 2013-12-05
 */
public class Cal {
	private String id;
	private String userId;//操作人
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	private String data;//计算的具体数据
	private Date calculateDate;//进行计算的时间
	
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getData() {
		return data;
	}
	public void setData(String data) {
		this.data = data;
	}
	public Date getCalculateDate() {
		return calculateDate;
	}
	public void setCalculateDate(Date calculateDate) {
		this.calculateDate = calculateDate;
	}
	
	
}
