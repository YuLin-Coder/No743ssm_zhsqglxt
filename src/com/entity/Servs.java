package com.entity;

import com.util.VeDate;

public class Servs {
	private String servsid = "S" + VeDate.getStringId();// 生成主键编号
	private String servsname;// 服务名称
	private String money;// 收费金额
	private String contents;// 服务介绍
	private String hits;// 点击数
	private String sellnum;// 预约次数
	private String addtime;// 创建日期

	public String getServsid() {
		return servsid;
	}

	public void setServsid(String servsid) {
		this.servsid = servsid;
	}

	public String getServsname() {
		return this.servsname;
	}

	public void setServsname(String servsname) {
		this.servsname = servsname;
	}

	public String getMoney() {
		return this.money;
	}

	public void setMoney(String money) {
		this.money = money;
	}

	public String getContents() {
		return this.contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public String getHits() {
		return this.hits;
	}

	public void setHits(String hits) {
		this.hits = hits;
	}

	public String getSellnum() {
		return this.sellnum;
	}

	public void setSellnum(String sellnum) {
		this.sellnum = sellnum;
	}

	public String getAddtime() {
		return this.addtime;
	}

	public void setAddtime(String addtime) {
		this.addtime = addtime;
	}

	// 重载方法 生成JSON类型字符串
	@Override
	public String toString() {
		return "Servs [servsid=" + this.servsid + ", servsname=" + this.servsname + ", money=" + this.money + ", contents=" + this.contents
				+ ", hits=" + this.hits + ", sellnum=" + this.sellnum + ", addtime=" + this.addtime + "]";
	}

}
